﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication4
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User.Identity is FormsIdentity)
                    {
                        FormsIdentity identity = (FormsIdentity)HttpContext.Current.User.Identity;
                        FormsAuthenticationTicket ticket = identity.Ticket;
                        string[] roles = ticket.UserData.Split(',');
                        HttpContext.Current.User = new GenericPrincipal(identity, roles);
                    }

                }
            }
        }

    
    }
}