using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculadoraProj
{
    public partial class index : System.Web.UI.Page
    {

        protected decimal Resultado { get; set; }// propriedade que ira guardar a informação da operação que esta no momento
        protected decimal Valor { get; set; }// guardando o valor que foi digitado
        protected Operacao OperacaoSelecionada { get; set; } // essa propriedade vai guardar a informação da operação
        protected enum Operacao // criando um enumerador , pra facilitar na escolha da operação
        {
            Adicao,
            Subtracao,
            Multiplicacao,
            Divisao
        }

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
            OperacaoSelecionada = Operacao.Subtracao;
            Valor = Convert.ToDecimal(TbResultado.Text);
            TbResultado.Text = "";

        }

        protected void Btnmulti_Click(object sender, EventArgs e)
        {
            OperacaoSelecionada = Operacao.Multiplicacao;
            Valor = Convert.ToDecimal(TbResultado.Text);
            TbResultado.Text = "";

        }

        protected void Btndividir_Click(object sender, EventArgs e)
        {
            OperacaoSelecionada = Operacao.Divisao;
            Valor = Convert.ToDecimal(TbResultado.Text);
            TbResultado.Text = "";

        }

        protected void Btnsomar_Click(object sender, EventArgs e)
        {
            OperacaoSelecionada = Operacao.Adicao;

            Valor = Convert.ToDecimal(TbResultado.Text);// convertendo o tbResultado em decimal

            TbResultado.Text = "";//pra limpar a tela do textBox



        }


        protected void Btnigual_Click(object sender, EventArgs e)
        {
            switch (OperacaoSelecionada)// switch case faz a função pra saber qual operação foi escolhida
            {
                case Operacao.Divisao:
                    Resultado = Valor / Convert.ToDecimal(TbResultado.Text);// convertendo pra decimal

                    break;
                case Operacao.Multiplicacao:
                    Resultado = Valor * Convert.ToDecimal(TbResultado.Text);
                    break;
                case Operacao.Adicao:
                    Resultado = Valor + Convert.ToDecimal(TbResultado.Text);
                    break;
                case Operacao.Subtracao:
                    Resultado = Valor - Convert.ToDecimal(TbResultado.Text);

                    break;




            }


            TbResultado.Text = Convert.ToString(Resultado);// mostrando o resultado na tela // convertendo pra string
        }

        protected void Btnvirgula_Click(object sender, EventArgs e)
        {
            if (!TbResultado.Text.Contains(","))

                TbResultado.Text = ",";
        }


    }
}