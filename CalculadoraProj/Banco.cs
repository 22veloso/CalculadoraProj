using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CalculadoraProj
{
    public class Banco
    { //String Conexão 
        string strCon = @"Server=(localdb)\MSSQLLocalDB;Integrated Security=true;AttachDbFileName=C:\USERS\LUCAS VELOSO\ONEDRIVE\DOCUMENTOS\CALCULADORABDA.MDF";
       
        public void Inserir(CalculoModel calculadora)
        {
            //Abre a conexão
            SqlConnection conn = new SqlConnection(strCon);
            conn.Open();
            Console.WriteLine("Conectou!");

            //Exemplo Insert
            string strInsert = "insert into Resultado (DataHora, Calculo) values (@DataHora, @Calculo)";
            SqlCommand commandInsert = new SqlCommand(strInsert, conn);

            commandInsert.Parameters.Add(new SqlParameter("@DataHora", calculadora.DataHora));
            commandInsert.Parameters.Add(new SqlParameter("@Calculo", calculadora.Resultados));

            //Insere no Banco!
            commandInsert.ExecuteNonQuery();
        }


    }
}