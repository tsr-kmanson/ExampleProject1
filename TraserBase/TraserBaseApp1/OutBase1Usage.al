codeunit 50041 "TraserApp1 OutBase1 Mgmt"
{
    procedure GetTotalProductValue(): Decimal
    var
        OutBase1Product: Record "OutBase1 Product";
        TotalValue: Decimal;
    begin
        TotalValue := 0;
        if OutBase1Product.FindSet() then
            repeat
                TotalValue += OutBase1Product."Unit Price";
            until OutBase1Product.Next() = 0;
        exit(TotalValue);
    end;

    procedure GetProductCountByCategory(CategoryFilter: Text[50]): Integer
    var
        OutBase1Product: Record "OutBase1 Product";
    begin
        OutBase1Product.SetRange("Category", CategoryFilter);
        exit(OutBase1Product.Count());
    end;
}
