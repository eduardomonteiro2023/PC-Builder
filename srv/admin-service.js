const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {
    const persons = await cds.connect.to('metadata');
  
    this.on('READ', 'Persons', req => {
        return persons.run(req.query);
    });
  });