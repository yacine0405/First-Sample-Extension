tableextension 50103 "Customer Ext" extends Customer
{
    fields
    {
        field(50100; "Reward ID"; Code[30])
        {
            DataClassification = CustomerContent;
            TableRelation = Reward."Reward ID";
            ValidateTableRelation = true;

            trigger OnValidate()

            begin
                if (Rec."Reward ID" <> xRec."Reward ID") and (rec.Blocked <> Blocked::" ") then 
                begin
                    Error('Cannot update the rewards status of a blocked customer');
                end;

            end;
        }
    }

}