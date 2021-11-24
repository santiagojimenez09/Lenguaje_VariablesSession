using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Promedio_variablesSession
{
    public partial class FrmPromedio : System.Web.UI.Page
    {
        int k, n, numero;
        float acomulador, promedio;

        protected void Btnlimpiar_Click(object sender, EventArgs e)
        {

        }

        protected void TxtN_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Btncantidad_Click(object sender, EventArgs e)
        {
            if (TxtN.Text == "")
            {
                Lblmensaje.Text = "Digite la cantidad de numeros";
                TxtN.Focus();
            }
            else
            {
                Lblmensaje.Text = "";
                n = Convert.ToInt32(TxtN.Text);
                Session["ses_n"]=n;
                k = 0;
                Session["ses_k"] = k;
                acomulador = 0;
                Session["ses__acom"] = acomulador;
                Txtnumero.Focus();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                TxtN.Focus();
            }
        }

        protected void Btnpromedio_Click(object sender, EventArgs e)
        {
            numero = Convert.ToInt32(Txtnumero.Text);
            n = Convert.ToInt32(Session["ses_n"]);
            acomulador = Convert.ToSingle(Session["ses_acum"]);
            acomulador = acomulador + numero;
            Session["ses__acom"] = acomulador;
            k = Convert.ToInt32(Session["ses_k"]);
            k++;
            Session["ses_k"] = k;
            if (k == n)
            {
                promedio = acomulador / n;
                Lblpromedio.Text = "" + promedio;
            }
            else
            {
                Txtnumero.Text = "";
                Txtnumero.Focus();
            }
        }
    }
}