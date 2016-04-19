﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/master.Master" CodeBehind="SignUp.aspx.cs" Inherits="ContractGenerator.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Sign Up</title>
        <link href="bootstrap.css" rel="stylesheet" />
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <style type="text/css">
            .auto-style1 {
                height: 23px;
            }
        </style>
    </head>
    <body>
        <% Response.WriteFile("~/header.aspx");%>        <% Response.WriteFile("~/footer.html");%>
        <form id="form1" runat="server">
            <asp:CreateUserWizard ID="RegisterUserWithRoles" runat="server" FinishDestinationPageUrl="~/Default.aspx" OnCreatedUser="CreateUserWizard1_CreatedUser" ContinueDestinationPageUrl="~/MainPanel.aspx" LoginCreatedUser="False" CreateUserButtonText="Next">
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" ID="SignUpStep">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td align="center" colspan="4" class="auto-style1">Create New Account</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>

                                    <td align="left">
                                        <asp:Label ID="CompanyName" runat="server" AssociatedControlID="CompanyNamebox">Company Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="CompanyNameBox" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="CompanyNameRequired" runat="server" ControlToValidate="CompanyNameBox" ErrorMessage="Company Name is required." ToolTip="Company Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                        <!-- <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator> -->
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:WizardStep ID="SpecifyRolesStep" runat="server" Title="Specify Roles">
                        <asp:CheckBoxList ID="RoleList" runat="server"></asp:CheckBoxList>
                    </asp:WizardStep>
                    <asp:CompleteWizardStep runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td align="center">Complete</td>
                                </tr>
                                <tr>
                                    <td>Your account has been successfully created.</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" PostBackUrl="~/MainPanel.aspx" Text="Continue" ValidationGroup="RegisterUserWithRoles" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPanel.aspx">Back to Main Panel</asp:HyperLink>
            </p>

            <div>
            </div>
        </form>
    </body>
    </html>
</asp:Content>
