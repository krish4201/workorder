using maintenance from '../db/schema';

service WorkOrderService {

    
    @restrict: [
        { grant: ['READ','CREATE', 'UPDATE', 'DELETE'], to: 'any' },
    ]
    entity WorkOrders as projection on maintenance.WorkOrders;

    entity StatusHistory as projection on maintenance.StatusHistory;

    @cds.draft.enabled: false
    action assignTechnician(
        workOrderNo: String,
        technicianId: String,
        technicianName: String);

    @cds.draft.enabled: false
    action updateStatus(
        workOrderNo: String,
        status: String
    );

    @cds.draft.enabled: false
    action startWork(
        workOrderNo: String
    ) ;

    @cds.draft.enabled: false
    action completeWork(
        workOrderNo: String
    );

}