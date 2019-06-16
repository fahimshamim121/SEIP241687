using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Database
{
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();
        }

        private void SaveButton_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            string code = codeTextBox.Text;

            Insert(name,code);
        }

        private void Insert(string name,string code)
        {

            try
            {

                SqlConnection sqlConnection = new SqlConnection();
                string connectionString = @"server=PC-301-12\SQLEXPRESS;Database = StudentDB;Integrated Security=True";
                sqlConnection.ConnectionString = connectionString;

                //
                SqlCommand sqlCommand = new SqlCommand();
                string commandSting = @"INSERT INTO Departments(Name,Code)VALUES('"+name+"','"+code+"')";
                sqlCommand.CommandText = commandSting;
                sqlCommand.Connection = sqlConnection;

                //
                sqlConnection.Open();

                //
                int isExecuted = 0;
                isExecuted = sqlCommand.ExecuteNonQuery();

                if (isExecuted > 0)

                {

                    MessageBox.Show("Save Date Sucessfuly!");

                }

                else
                {
                    MessageBox.Show("Save Failed!");
                }

                //
                sqlConnection.Close();
            }



            catch (Exception exception)

            {
                MessageBox.Show(exception.Message);

            }

        }



    }
}
