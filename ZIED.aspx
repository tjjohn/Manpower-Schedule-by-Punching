<%@ Page Title="" Language="C#" MasterPageFile="~/SAP1.master" AutoEventWireup="true" CodeFile="ZIED.aspx.cs" Inherits="ZIED" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
    .modal
    {
        position: fixed;
        top: 0;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%;
    }
    .loading
    {
        font-family: Arial;
        font-size: 10pt;
        border: 5px solid #67CFF5;
        width: 200px;
        height: 100px;
        display: none;
        position: fixed;
        background-color: White;
        z-index: 999;
    }
</style>
    <table style="width:80%;margin-left:10%;">
         <tr>
             <td style="height: 19px; " colspan="3">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
         <tr>
             <td style="height: 29px; width: 367px"></td>
             <td style="height: 29px; " colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server" style="font-weight: 700; position: relative; font-size: x-large; text-decoration: underline;" Text=" ZIED Details"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
              <td style="height: 29px"></td>
              <td style="height: 29px"></td>
         </tr>
         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

<%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    function ShowProgress() {
        setTimeout(function () {
            var modal = $('<div />');
            modal.addClass("modal");
            $('body').append(modal);
            var loading = $(".loading");
            loading.show();
            var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
            var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
            loading.css({ top: top, left: left });
        }, 200);
    }
    $('form').live("submit", function () {
        ShowProgress();
    });
</script>--%>
         <tr>
                 <td class="auto-style11"><strong><span class="auto-style13">PLANT</span></strong></td>
            <td> <asp:DropDownList ID="txtPlant" runat="server" Height="25px"  CssClass="auto-style9" Font-Bold="True">
              <asp:ListItem Value="" >-------SELECT---------</asp:ListItem>
                      <asp:ListItem Value="1001">1001</asp:ListItem>
                   <asp:ListItem Value="1004">1004</asp:ListItem>
                 </asp:DropDownList>
          </td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
         <tr>
            <td class="auto-style11"><strong><span class="auto-style13">DATE FROM</span></strong></td>

             <td ><asp:TextBox ID="txtFrom" runat="server" Height="29px" Font-Bold="True" Font-Size="Large"></asp:TextBox>
          <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtfrom" Format="dd/MM/yyyy"></asp:CalendarExtender></td> 
    
               </td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
       <td class="auto-style11"><strong><span class="auto-style13">DATE TO</span></strong></td>

             <td ><asp:TextBox ID="txtTO" runat="server" Height="29px" Font-Bold="True" Font-Size="Large"></asp:TextBox>
          <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtTO" Format="dd/MM/yyyy"></asp:CalendarExtender></td> 
    
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
        <tr>
          <td style="height: 19px">&nbsp;</td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              <td> <asp:FileUpload ID="upload" runat="server"  Font-Names="Times New Roman" Font-Size="Medium" style="font-size: medium" /></td>  
              
              <td>
                  <asp:Button ID="btnShow" runat="server" CssClass="btnclass" Height="30px" OnClick="ZIED_Click" Text="UPLOAD" Width="102px" />
              </td>
               <td>
              <%--    <asp:Button ID="R07" runat="server" CssClass="btnclass" Height="30px"  Text="YPRO7" Width="102px" OnClick="R07_Click" />--%>
              </td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
             <td style="width: 367px"></td>
           
           
              <td></td>
              <td></td>
         </tr>
          <tr>
             <td style="height: 19px; width: 367px"></td>
             <td style="height: 19px; width: 367px"></td>
             <td style="height: 19px; width: 367px"></td>
              <td style="height: 19px"></td>
              <td style="height: 19px; width: 558px"></td>
              <td style="height: 19px"></td>
              <td style="height: 19px"></td>
         </tr>
         <tr>
            <td style="width: 244px; height: 19px;"></td>
             <%--  <tr>--%>          <%-- <td style="width: 163px">&nbsp;</td>--%>
           <td colspan="4">
               
           </td>
             </tr>
          <tr>
             <td style="height: 19px; " colspan="2">&nbsp;</td>
             <td class="loading" >
    Loading...<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="loader.gif" alt="" />
</td>
              <td style="height: 19px" colspan="3">&nbsp;</td>
              
         </tr>
       
          <tr>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">
                 <asp:GridView ID="GridView1" runat="server">
                 </asp:GridView>
              </td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
          <tr>
             <td style="height: 19px; width: 367px">
                 <asp:Label ID="lblid" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="txtDate" runat="server" Text="Label" Visible="False"></asp:Label>
              </td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
             <td style="height: 19px; width: 367px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px; width: 558px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
              <td style="height: 19px">&nbsp;</td>
         </tr>
         </table>
</asp:Content>

