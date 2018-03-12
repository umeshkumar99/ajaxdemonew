using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
 
namespace Ajaxdemo
{
    /// <summary>
    /// Summary description for AjaxWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AjaxWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }


        [WebMethod]
        public string[] GetCountriesList(string prefixText, int count)
        {
            List<string> countriesArList = new List<string>();
            countriesArList.Add("India");
            countriesArList.Add("Iran");
            countriesArList.Add("Iraq");
            countriesArList.Add("Israel");
            return countriesArList.ToArray();
        }
        [WebMethod]

        public AjaxControlToolkit.Slide[] GetSlides()
        {
            AjaxControlToolkit.Slide[] slides = new AjaxControlToolkit.Slide[5];

            slides[0] = new AjaxControlToolkit.Slide("images/angularjs1.png", "Angular JS", "Angular JS");
            slides[1] = new AjaxControlToolkit.Slide("images/Entity framework2.jpg", "Entity framework", "Entity framework");
            slides[2] = new AjaxControlToolkit.Slide("images/visual studio3.jpg", "visual studio", "visual studio...");
            slides[3] = new AjaxControlToolkit.Slide("images/wcf3.png", "Wcf", "wcf");
            slides[4] = new AjaxControlToolkit.Slide("images/oracle DB1.jpg", "oracle DataBase", "oracle DataBase");
            return (slides);
        }

        [WebMethod]
        public string[] GetCourseData(string prefixText, int count)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connectionstring"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            List<string> sCourseName = new List<string>();

            try
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "StudentGetCourseName";
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter prm = new SqlParameter();
                prm.ParameterName = "@course";
                prm.Value = prefixText;
                //cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.Add(prm);
                cmd.CommandTimeout = 0;
                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())
                {
                    sCourseName.Add(rd["course"].ToString());

                }
                cmd.Dispose();
                conn.Close();
                conn.Dispose();
                return sCourseName.ToArray();
            }
            catch (Exception e)
            {
                //response.write(e.InnerException);
                throw e;
                return sCourseName.ToArray();
            }
            finally
            {
                conn.Dispose();
                //return 1;
            }

        }

        [WebMethod]
        public string[] GetStudentName(string prefixText, int count)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connectionstring"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            List<string> sStudentName = new List<string>();

            try
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "StudentGetName";
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter prm = new SqlParameter();
                prm.ParameterName = "@name";
                prm.Value = prefixText;
                //cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.Add(prm);
                cmd.CommandTimeout = 0;
                SqlDataReader rd = cmd.ExecuteReader();
                int loopct = 1;
                while (rd.Read() && loopct <= count)
                {
                    sStudentName.Add(rd["sname"].ToString());
                    loopct++;
                }
                cmd.Dispose();
                conn.Close();
                conn.Dispose();
                return sStudentName.ToArray();
            }
            catch (Exception e)
            {
                //response.write(e.InnerException);
                throw e;
                return sStudentName.ToArray();
            }
            finally
            {
                conn.Dispose();
                //return 1;
            }

        }





    }
}
