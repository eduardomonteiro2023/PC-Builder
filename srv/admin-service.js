const cds = require('@sap/cds');
const axios = require('axios');


module.exports = async srv => {
    const { Computer, Persons } = srv.entities;

    const service = await cds.connect.to('metadata');

    srv.on('READ', Persons, req => {
        return service.run(req.query);
    });


    srv.on('READ', Computer, async req => { 
    
    const response = await axios.get(req.query.url);

        // Extract relevant data from the response
        const data = response.data;

        // Return the fetched information
        return data;})

    srv.on('acceptOrder', req => UPDATE(req.target).with({ orderstatus_code: 'A' }));
    srv.on('rejectOrder', req => UPDATE(req.target).with({ orderstatus_code: 'X' }));

    srv.before(['READ', 'CREATE', 'UPDATE'], Computer, async req => {

        let totalPrice = 0;

        const { case: cases, cpucooler, cpu, memory, motherboard, powersupply, gpu, internalmemory } = req.data;

        // Calculate the total price from associated entities
        totalPrice = await calculateTotalPrice(cases) +
            await calculateTotalPrice(cpucooler) +
            await calculateTotalPrice(cpu) +
            await calculateTotalPrice(memory) +
            await calculateTotalPrice(motherboard) +
            await calculateTotalPrice(powersupply) +
            await calculateTotalPrice(gpu) +
            await calculateTotalPrice(internalmemory);

        // Add the total price to the 'price' field of the Computer entity
        req.data.price = totalPrice;

    });

    async function calculateTotalPrice(entities) {
        let totalPrice = 0;

        if (entities) {
            for (const entity of entities) {
                totalPrice += entity.price || 0;
            }
        }
        return totalPrice;
    }

};
