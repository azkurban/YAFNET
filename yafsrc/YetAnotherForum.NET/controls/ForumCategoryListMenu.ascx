<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ForumCategoryListMenu.ascx.cs" Inherits="YAF.Controls.ForumCategoryListMenu" %>
<%@ Import Namespace="YAF.Core" %>
<%@ Import Namespace="YAF.Types.Constants" %>
<%@ Import Namespace="YAF.Utils" %>
<%@ Import Namespace="YAF.Types.Interfaces" %>
<%@ Register TagPrefix="YAF" TagName="ForumList" Src="ForumListMenu.ascx" %>
<asp:UpdatePanel ID="UpdatePanelCategory" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <table class="content" width="100%">
            <asp:Repeater ID="CategoryList" runat="server">
                <ItemTemplate>
                    <tr class="forumRowCat header2">
                        <td colspan="<%# ColumnCount() %>">
                            <YAF:CollapsibleImage ID="CollapsibleImage" runat="server" BorderWidth="0" ImageAlign="Bottom"
                                PanelID='<%# "categoryPanel" + DataBinder.Eval(Container.DataItem, "CategoryID").ToString() %>'
                                AttachedControlID="forumList" DefaultState="Collapsed" ToolTip='<%# this.GetText("COMMON", "SHOWHIDE") %>' />
                            &nbsp;&nbsp; <a href='<%# YAF.Utils.YafBuildLink.GetLink(ForumPages.forum,"c={0}",DataBinder.Eval(Container.DataItem, "CategoryID")) %>'
                                title='<%# this.GetText("COMMON", "VIEW_CATEGORY") %>'>
                                <asp:Image ID="uxCategoryImage" CssClass="category_image" AlternateText=" " ImageUrl='<%# YafForumInfo.ForumClientFileRoot + YafBoardFolders.Current.Categories + "/" + DataBinder.Eval(Container.DataItem, "CategoryImage") %>'
                                    Visible='<%# !String.IsNullOrEmpty(DataBinder.Eval(Container.DataItem, "CategoryImage" ).ToString()) %>'
                                    runat="server" />
                                <%# Page.HtmlEncode(DataBinder.Eval(Container.DataItem, "Name")) %>
                            </a>
                        </td>
                    </tr>
                    <YAF:ForumList runat="server" Visible="true" ID="forumList" 
                        DataSource='<%# ((System.Data.DataRowView)Container.DataItem).Row.GetChildRows("FK_Forum_Category") %>' />
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>

