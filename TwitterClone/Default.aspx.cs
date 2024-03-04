using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TwitterClone.App_Code.Posts;

namespace TwitterClone
{
    public partial class Default : System.Web.UI.Page
    {
        public IEnumerable<Post> AllPosts = new List<Post>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var postRepository = new PostRepository();
            AllPosts = postRepository.GetAllPosts();
        }
    }
}

