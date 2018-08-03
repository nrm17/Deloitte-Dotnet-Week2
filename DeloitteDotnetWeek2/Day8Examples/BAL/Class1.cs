using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Entity;

namespace BAL
{
    public class LoginBAL
    {
        LoginDAL dal = new LoginDAL();
        public bool Authenticate(LoginEntity le)
        {
            if (le.Password.Length < 2)
                throw new Exception("Password length is less");
            else
                return dal.Authenticate(le);

        }
    }
}
