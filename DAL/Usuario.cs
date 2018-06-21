/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using BOL;

namespace DAL
{
    public class Usuario
    {

        public static List<Usuario> listaUsuario()
        {
            SqlCommand cmd = new SqlCommand();
            string con = "Data Source=(LocalDB)\\MSSQLLocalDB; Integrated Security= true";

            cmd.Connection = new SqlConnection(con);

            cmd.Connection.Open();
            cmd.Parameters.Clear();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT id_usuario,nombre_usuario,key_usuario FROM Usuarios";

            SqlDataReader rdr = cmd.ExecuteReader();
            List<BOL.Usuario> listaUsuario = new List<BOL.Usuario>();

            while (rdr.Read())
            {
                listaUsuario.Add(new Usuario
                {
                    id = Int32.Parse(rdr["id_usuario"].ToString()),
                    Username = rdr["nombre_usuario"].ToString(),
                    Pass = rdr["key_usuario"].ToString(),


                });
            }

            cmd.Connection.Close();
            cmd.Dispose();

            return listaUsuario;


        }

    }
}*/