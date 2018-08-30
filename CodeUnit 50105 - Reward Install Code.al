codeunit 50105 "Reward Install Code"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        Reward: Record Reward;
    begin
        if Reward.IsEmpty() then begin
            InsertDefaultReward();
        end;
    end;

    procedure InsertDefaultReward();
    begin
        InsertRewardLevel('GOLD', 'Gold Level', 20);
        InsertRewardLevel('SILVER', 'Silver Level', 10);
        InsertRewardLevel('BRONZE', 'Bronze Level', 5);
    end;

    procedure InsertRewardLevel(ID: Code[30]; Description: Text[250]; Discount: Decimal);
    var
        Reward: Record Reward;
    begin
        Reward.Init();
        Reward."Reward ID" := ID;
        Reward.Description := Description;
        Reward."Discount Percentage" := Discount;
        Reward.Insert();
    end;
}