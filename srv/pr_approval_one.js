const cds = require('@sap/cds')

module.exports = class prService extends cds.ApplicationService { init() {

  const { prtableSet } = cds.entities('prService')

  this.before (['CREATE', 'UPDATE'], prtableSet, async (req) => {
     const {prno,qty,rel_state } = req.data;

    if(!prno)  {
        req.error({
          code: "PRNO_REQUIRED",
          message: "Purchase Request Number is required.",
          target: "prno",
          status:400
        });
    }
     // Exactly 10 digits, numbers only
    if (!/^\d{10}$/.test(prno)) {
      req.error({
        code: "INVALID_PR_NO",
        message: "Purchase request number must contain exactly 10 digits only.",
        target: "pr_no",
        status:400
      });
    }

  /***************************Quantity Validation *********************** */
  if(qty === null || qty === undefined)  {
      req.error({
        code: "QTY_REQUIRED",
        message: "Quantity is required.",
        target: "qty",
        status:400
      });
  }

  if(qty <=0)  {
      req.error({
        code: "INVALID_QTY",
        message: "Quantity is must be greater than zero.",
        target: "qty",
        status:400
      });
  }

  /***************************Release State Validation *********************** */
  if(rel_state.length > 2){
      req.error({
        code: "INVALID_STATE",
        message: "The release state must be 2 char only.",
        target: "rel_state",
        status:400
      });
   }

   return req.error;
   
  })
  this.after ('READ', prtableSet, async (prtableSet, req) => {
    console.log('After READ prtableSet', prtableSet)
  })


  return super.init()
}}
