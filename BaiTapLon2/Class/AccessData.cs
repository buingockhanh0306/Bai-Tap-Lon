using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BaiTapLon2.Class
{
    public class AccessData
    {
        public SqlConnection GetConnection()
        {
            return new SqlConnection(@"Data Source=.\BUIKHANH;Initial Catalog=QLBanSach;Integrated Security=True");
        }
        public void ExcuteNonQuery(string sql)
        {
            SqlConnection conn = GetConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            cmd.Dispose();
        }
        public SqlDataReader ExecuteReader(string sql)
        {
            SqlConnection conn = GetConnection();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }
    }
}