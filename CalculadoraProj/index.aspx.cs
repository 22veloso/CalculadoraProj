using System;
using System.IO;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraProj
{
    public partial class index : System.Web.UI.Page
    {




        protected void Btn0_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "0"; //pegando o tb resultado e passando a informaçao // " += " serve pra concatenar e mostrar mais de um digito caso o usuario aperte mais que uma vez
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "1";
        }

        protected void Btn2_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "2";
        }

        protected void Btn3_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "3";
        }

        protected void Btn4_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "4";

        }

        protected void Btn5_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "5";
        }



        protected void Btn6_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "6";
        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "7";
        }

        protected void btn8_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "8";
        }

        protected void btn9_Click(object sender, EventArgs e)
        {
            TbResultado.Text += "9";
        }

        protected void Btnsub_Click(object sender, EventArgs e)
        {
            Operacao.Value = "-";
            numAnterior.Value = (double.Parse(TbResultado.Text)).ToString();
            lblDados.Text = lblDados.Text + " " + TbResultado.Text + " - ";
            TbResultado.Text = "";
        }

        protected void Btnmulti_Click(object sender, EventArgs e)
        {
            Operacao.Value = "X";
            numAnterior.Value = (double.Parse(TbResultado.Text)).ToString();
            lblDados.Text = lblDados.Text + " " + TbResultado.Text + " X ";
            TbResultado.Text = "";

        }

        protected void Btndividir_Click(object sender, EventArgs e)
        {
            Operacao.Value = "/";
            numAnterior.Value = (double.Parse(TbResultado.Text)).ToString();
            lblDados.Text = lblDados.Text + " " + TbResultado.Text + " / ";
            TbResultado.Text = "";

        }

        protected void Btnsomar_Click(object sender, EventArgs e)
        {
            Operacao.Value = "+";
            numAnterior.Value = (double.Parse(TbResultado.Text)).ToString();
            lblDados.Text = lblDados.Text + " " + TbResultado.Text + " + ";
            TbResultado.Text = "";



        }


        protected void Btnigual_Click(object sender, EventArgs e)
        {
            switch (Operacao.Value)// switch case faz a função pra saber qual operação foi escolhida
            {
                case "-":
                    double Resultado = (double.Parse(numAnterior.Value) - double.Parse(TbResultado.Text));
                    lblDados.Text = lblDados.Text + " " + TbResultado.Text + " = ";
                    TbResultado.Text = Resultado.ToString();
                    WriteTxt(lblDados.Text + " " + Resultado.ToString());
                    WriteDataBase(lblDados.Text + " " + Resultado.ToString());

                    break;

                case "X":
                    Resultado = (double.Parse(numAnterior.Value) * double.Parse(TbResultado.Text));
                    lblDados.Text = lblDados.Text + " " + TbResultado.Text + " = ";
                    TbResultado.Text = Resultado.ToString();
                    WriteTxt(lblDados.Text + " " + Resultado.ToString());
                    WriteDataBase(lblDados.Text + " " + Resultado.ToString());
                    break;
                case "/":
                    Resultado = (double.Parse(numAnterior.Value) / double.Parse(TbResultado.Text));
                    lblDados.Text = lblDados.Text + " " + TbResultado.Text + " = ";
                    TbResultado.Text = Resultado.ToString();
                    WriteTxt(lblDados.Text + " " + Resultado.ToString());
                    WriteDataBase(lblDados.Text + " " + Resultado.ToString());
                    break;
                case "+":
                    Resultado = (double.Parse(numAnterior.Value) + double.Parse(TbResultado.Text));
                    lblDados.Text = lblDados.Text + " " + TbResultado.Text + " = ";
                    TbResultado.Text = Resultado.ToString();
                    WriteTxt(lblDados.Text + " " + Resultado.ToString());
                    WriteDataBase(lblDados.Text + " " + Resultado.ToString());
                    break;

                default:


                    break;





            }



        }

        protected void Btnvirgula_Click(object sender, EventArgs e)
        {
            if (!TbResultado.Text.Contains(","))

                TbResultado.Text += ",";
        }

        protected void Btn_Limpar_Click(object sender, EventArgs e)
        {
            TbResultado.Text = " ";
            lblDados.Text = "";

        }

        private void WriteTxt(string result)
        {
            string path = @"C:\Users\Lucas Veloso\OneDrive\Documentos\txt\CalculadoraProj.txt";
            string readText = "";

            if (File.Exists(path))
            {
                readText = File.ReadAllText(path);
            }

            // Write file using StreamWriter  
            using (StreamWriter writer = new StreamWriter(path))
            {
                if (readText != "")
                    writer.Write(readText);

                writer.WriteLine(DateTime.Now + ": " + result);
            }
        }
        private void WriteDataBase(string result)
        {
            CalculoModel calculadora = new CalculoModel()
            {
                Resultados = result,
                DataHora = DateTime.Now.ToString()
            };

            new Banco().Inserir(calculadora);
        }


    }
}

