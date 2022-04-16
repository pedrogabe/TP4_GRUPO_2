using System.Data;
using System.Data.SqlClient;

namespace TP4_GRUPO_2
{
    public static class DB
    {
        public static DataSet Query(string connString, string query)
        {
            SqlDataAdapter da = new SqlDataAdapter(query, connString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}