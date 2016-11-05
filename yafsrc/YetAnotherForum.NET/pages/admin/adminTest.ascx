<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="adminTest.ascx.cs" Inherits="YAF.pages.admin.adminTest" %>
                <div class="card-footer form-inline">
                    <asp:LinkButton OnLoad="ApproveAll_Load" ID="ApproveAllLinkButton" CommandName="approveall" CssClass="btn btn-primary btn-sm" data-icon="check"
                                runat="server"/>
                        <asp:LinkButton OnLoad="DeleteAll_Load" ID="DeleteAllLinkButton" CommandName="deleteall" CssClass="btn btn-danger btn-sm" data-icon="trash"
                            runat="server" />
                        <asp:TextBox ID="DaysOld" runat="server" MaxLength="5" Text="14" CssClass="form-control Numeric" TextMode="Number"></asp:TextBox>
                 </div>
