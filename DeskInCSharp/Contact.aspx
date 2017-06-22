<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DeskInCSharp.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ValidationControls" id="EnterComments" runat="server">
        <h4 style="font-size: medium">Contact Us</h4>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>
        <div style="margin-bottom: 10px">
            <asp:Label runat="server" AssociatedControlID="FirstName">First name</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="FirstName" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your first name" ControlToValidate="FirstName">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div style="margin-bottom: 10px">
            <asp:Label runat="server" AssociatedControlID="LastName">Last Name</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="LastName"  />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter your last name" ControlToValidate="LastName">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div style="margin-bottom: 10px">
            <asp:Label runat="server" AssociatedControlID="Email">Email Address</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter your email address" CssClass="ErrorMessage" Display="Dynamic" ControlToValidate="Email">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Not a valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email">*</asp:RegularExpressionValidator>
            </div>
        </div>
        <div style="margin-bottom: 10px">
            <asp:Label runat="server" AssociatedControlID="ConfirmEmail">Confirm Email</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="ConfirmEmail" TextMode="Email"  />
                <asp:CompareValidator ID="CompareValidatorConfirmEmail" runat="server" CssClass="ErrorMessage" Display="Dynamic" ControlToCompare="Email" ErrorMessage="The email addresses entered do not match" ControlToValidate="ConfirmEmail">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirm" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm your email address " ControlToValidate="ConfirmEmail">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div style="margin-bottom: 10px">
            <asp:Label runat="server" AssociatedControlID="Comments">Comments</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="Comments" Height="100px" Width="300px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorComments" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your comments" ControlToValidate="Comments">*</asp:RequiredFieldValidator>
                <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Please correct the following erros:" ShowMessageBox="True" ShowSummary="False" />
            </div>
        </div>
        <div>
            <div>
                <asp:Button runat="server" OnClick="Submit_Click" Text="Submit" />
            </div>
        </div>
    </div>
    <asp:Label ID="Message" runat="server" Text="Thank you for your feedback!" Visible="false" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
