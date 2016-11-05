using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YAF.Core.Services;
using YAF.Types.Interfaces;

namespace YAF.Controls
{
    public partial class ForumCategoryListMenu : YAF.Controls.ForumCategoryList
    {
        /// <summary>
        /// Bind Data
        /// </summary>
        protected override void BindData()
        {
            DataSet ds = this.Get<YafDbBroker>().BoardLayout(
                    this.PageContext.PageBoardID, this.PageContext.PageUserID, null, null);

            this.CategoryList.DataSource = ds.Tables["Category"];
            this.CategoryList.DataBind();
        }
    }
}