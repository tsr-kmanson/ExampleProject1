page 50022 "BevBase OutBase1 Products"
{
    Caption = 'OutBase1 Products';
    PageType = List;
    SourceTable = "OutBase1 Product";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Products)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Category"; Rec."Category")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
