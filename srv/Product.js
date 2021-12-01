const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
  const { Products } = this.entities;
  const service = await cds.connect.to("ZAS_OEM_PRODUCT_JTE_SRV");

  this.on("READ", Products, (request) => {
    return service.tx(request).run(request.query);
  });

  this.on("CREATE", Products, (request) => {
    // CSRF-Token holen und im Header mitgeben
    
//    await service.tx(request).run (INSERT.into ('Products').entries ({
//        //Material:1, Serialnumber: 'SN'
//     }))
    return service.tx(request).run(request.query);
  });
});
