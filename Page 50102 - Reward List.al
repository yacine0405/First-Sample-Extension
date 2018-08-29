page 50102 "Reward List"
{
    PageType = List;
    SourceTable = Reward;
    CardPageId = "Reward Card"; //Difinit la Page Card Associée à la table "Reward"
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                }
                field("Discount Percentage";"Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}