<%@ Control Language="c#" AutoEventWireup="True" Inherits="YAF.Controls.ForumListMenu"
	EnableViewState="false" Codebehind="ForumListMenu.ascx.cs" %>
<%@ Import Namespace="YAF.Core" %>
<%@ Import Namespace="YAF.Types.Extensions" %>
<%@ Register TagPrefix="YAF" TagName="ForumLastPost" Src="ForumLastPost.ascx" %>
<%@ Register TagPrefix="YAF" TagName="ForumModeratorList" Src="ForumModeratorList.ascx" %>
<%@ Register TagPrefix="YAF" TagName="ForumSubForumList" Src="ForumSubForumList.ascx" %>
<asp:Repeater ID="ForumList1" runat="server" OnItemCreated="ForumList1_ItemCreated">
	<ItemTemplate>
		<tr class="forumRow post">
			<td class="forumIconCol">
				<YAF:ThemeImage  ID="ThemeForumIcon" Visible="false" runat="server" />	
				<img id="ForumImage1" class="" src="" alt="image" visible="false" runat="server" style="border-width:0px;" />	
			</td>
			<td class="forumLinkCol">
				<div class="forumheading">
					<%# GetForumLink((System.Data.DataRow)Container.DataItem) %>
				</div>
				<YAF:ForumSubForumList ID="SubForumList1" runat="server" DataSource='<%# GetSubforums( (System.Data.DataRow)Container.DataItem ) %>'
					Visible='<%# HasSubforums((System.Data.DataRow)Container.DataItem) %>' />
			</td>
		</tr>
	</ItemTemplate>
</asp:Repeater>
