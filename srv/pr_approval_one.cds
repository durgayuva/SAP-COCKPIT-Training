using{SAPPRAPPROVAL} from '../db/pr_approval';

service prService @(requires: 'authenticated-user'){
    entity prtableSet 
    @(restrict: [
    {grant:'CREATE,READ,UPDATE',to:'ModuleLeadRole'},
    {grant:'*',to:'RORole'},
    {grant:'*',to:'HODRole'}
  ])
  @odata.draft.enabled as projection on SAPPRAPPROVAL.prtable;
}