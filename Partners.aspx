<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Partners.aspx.cs" Inherits="_Task_Financial.Partners" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Partners</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
 
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
  <div class="container">
    <a class="navbar-brand" href="#">FINANTIAL TASK</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    
      </ul>   
    </div>
  </div>
</nav>
       <div class="container"> 
  <form runat="server"> 
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 

     
  <br />
   <h3 class="text-info">SELECT PARENT</h3>
    <asp:DropDownList ID="ddl_DPartners" class="form-select form-control w-25" runat="server" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="ddl_DPartners_SelectedIndexChanged">
    </asp:DropDownList><br />
   <hr />

    <div class="row">
        <div class="col-md-8">
           <h3 class="text-info">PARENT EARNINGS</h3>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="scrollable">
                        <asp:Repeater ID="rpt_PartnerCalc" runat="server">
                            <HeaderTemplate>
                                <table class="table table-hover table-responsive">
                                    <tr class="bg-light">
                                        <td><b>#</b></td>
                                        <td><b>PARTNER_ID</b></td>
                                        <td><b>DATE</b></td>
                                        <td><b>AMOUNT</b></td>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# DataBinder.Eval(Container.DataItem, "FINANCIAL_ITEM_ID") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "PARTNER_ID") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "DATE") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "AMOUNT") %> </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <table class="table table-hover table-bordered table-responsive" style="width:100%">
                            <tr>
                                <td><b>Sum</b></td>
                                <td id="txt_sum" runat="server" style="text-align: right"></td>
                                <td><b>Fee</b></td>
                                <td id="txt_fee" runat="server" style="text-align: right"></td>
                                <td><b>Earnings</b></td>
                                <td id="txt_earnings" runat="server" style="text-align: right"></td>
                            </tr>
                            <tr class="bg-light">
                                <td><b>Team Sum</b></td>
                                <td id="txt_teamSum" runat="server" style="text-align: right"></td>
                                <td></td>
                                <td></td>
                                <td><b>Earnings From Team</b></td>
                                <td id="txt_teamEarnings" runat="server" style="text-align: right"></td>
                            </tr>
                            <tr class="bg-secondary" style="color:#fff">
                                <td><b>Total Sum</b></td>
                                <td id="txt_totalSum" runat="server" style="text-align: right"></td>
                                <td></td>
                                <td></td>
                                <td><b>Total Earnings</b></td>
                                <td id="txt_totalEarnings" runat="server" style="text-align: right"></td>
                            </tr>
                        </table>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
           <h3 class="text-info">CHILDREN EARNINGS</h3>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <div class="scrollable">
                        <asp:Repeater ID="rpt_ChildsCalc" runat="server">
                            <HeaderTemplate>
                                <table class="table table-hover table-responsive" style="width:100%">
                                    <tr class="bg-light">
                                        <td><b>#</b></td>
                                        <td><b>PARTNER NAME</b></td>
                                        <td><b>SUM</b></td>
                                        <td><b>FEE (%)</b></td>
                                        <td><b>EARNINGS</b></td>
                                        <td><b>TEAM SUM</b></td>
                                        <td><b>TOTAL SUM</b></td>
                                        <td><b>TOTAL EARNINGS</b></td>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# DataBinder.Eval(Container.DataItem, "PARTNER_ID") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "PARTNER_NAME") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "SUM") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "FEE_PERCENT") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "EARNINGS") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "TEAMSUM") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "TOTALSUM") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "TOTALEARNINGS") %> </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <table class="table table-hover table-responsive">
                            <tr>
                                <td><b>Team Amount</b></td>
                                <td id="txt_ChildrensPrice" runat="server" style="text-align: right"></td>
                            </tr>
                            <tr>
                                <td><b>Team Earnings</b></td>
                                <td id="txt_ChildrensEarnings" runat="server" style="text-align: right"></td>
                            </tr>
                        </table>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

        <div class="col-md-4" style="overflow-y: auto; max-height: 70vh;">
           <h3 class="text-info">PARTNERS HIERARCHY</h3>
            <asp:UpdatePanel ID="PartnersHierarchy" runat="server">
                <ContentTemplate>
                    <div class="scrollable-big">
                        <asp:Repeater ID="rpt_Partners" runat="server">
                            <HeaderTemplate>
                                <table class="table table-hover table-secondary table-responsive">
                                    <tr class="bg-light">
                                        <td><b>#</b></td>
                                        <td><b>Name</b></td>
                                        <td><b>ParentID</b></td>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# DataBinder.Eval(Container.DataItem, "PARTNER_ID") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "PARTNER_NAME") %> </td>
                                    <td><%# DataBinder.Eval(Container.DataItem, "PARENT_PARTNER_ID") %> </td>                                  
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</form> 
       </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
