using BLL;
using Entities;
using RegistroUsuarioTarea_4.Utilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarioTarea_4.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            //          < connectionStrings >
            //< add name = "ConStr" connectionString = "Data Source=.\sqlexpress;          Initial Catalog=Tarea4Db;          Integrated Security=True" providerName = "System.Data.SqlClient" />

            //   </ connectionStrings >
        }

        private void LimpiarCampos()
        {
            usuarioidTextBox.Text = " ";
            FechaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            nombresTextBox.Text = " ";
            nomUserTextBox.Text = "";
            EmailTextBox.Text = "";
            contraseñaTextBox.Text = "";
            VcontraseñaTextBox.Text = "";
            TelefonoTextBox.Text = "";
            CelularTextBox.Text = "";
            DropDownListUsuario.SelectedIndex = 0;
        }

        private Usuario LlenaClase()
        {
            Usuario usuario = new Usuario();

            usuario.UsuarioId = ToInt(usuarioidTextBox.Text);
            usuario.Fecha = Utils.ToDateTime(FechaTextBox.Text);
            usuario.Nombre = nombresTextBox.Text;
            usuario.NombreUser = nomUserTextBox.Text;
            usuario.Email = EmailTextBox.Text;
            usuario.Contraseña = contraseñaTextBox.Text;
            usuario.vContraseña = VcontraseñaTextBox.Text;
            usuario.Telefono = TelefonoTextBox.Text;
            usuario.Celular = CelularTextBox.Text;
            usuario.Tipo = DropDownListUsuario.Text;

            return usuario;
        }

        private int ToInt(object valor)
        {
            int retornar = 0;
            int.TryParse(valor.ToString(), out retornar);

            return retornar;
        }

        private bool HayErrores()
        {
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
            Expression<Func<Usuario, bool>> filtrar = x => true;
            Expression<Func<Usuario, bool>> filtro = x => true;
            filtrar = t => t.Email.Equals(EmailTextBox.Text);
            filtro = t => t.NombreUser.Equals(nomUserTextBox.Text);
            string nombre = nombresTextBox.Text;
            bool paso = false;
            string s = contraseñaTextBox.Text;
            string ss = VcontraseñaTextBox.Text;
            int comparacion = 0;
            comparacion = String.Compare(s, ss);
            if (comparacion != 0)
            {
                ContraseñaCompareValidator.ErrorMessage = "No Coinciden";
                VcontraseñaCompareValidator.ErrorMessage = "No Coinciden";
                paso = true;
            }
            if (String.IsNullOrEmpty(nombresTextBox.Text))
            {
                NombreRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                NombreRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(nomUserTextBox.Text))
            {
                UserRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                UserRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (repositorio.GetList(filtro).Count() != 0)
            {
                Response.Write("<script>alert('Este UserName ya existe');</script>");
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(TelefonoTextBox.Text))
            {
                TelRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                TelRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(CelularTextBox.Text))
            {
                celRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                celRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(EmailTextBox.Text))
            {
                EmailRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                EmailRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (repositorio.GetList(filtrar).Count() != 0)
            {
                Response.Write("<script>alert('Este email ya existe');</script>");
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(contraseñaTextBox.Text))
            {
                ContraseñaRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                ContraseñaRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            if (String.IsNullOrWhiteSpace(VcontraseñaTextBox.Text))
            {
                VcontraseñaRequiredFieldValidator.ErrorMessage = "No puede estar vacío";
                VcontraseñaRequiredFieldValidator.Enabled = true;
                paso = true;
            }
            return paso;
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
            Usuario usuario = repositorio.Buscar(ToInt(usuarioidTextBox.Text));
            if (usuario != null)
            {
                FechaTextBox.Text = usuario.Fecha.ToString();
                nombresTextBox.Text = usuario.Nombre;
                nomUserTextBox.Text = usuario.NombreUser;
                EmailTextBox.Text = usuario.Email;
                contraseñaTextBox.Text = usuario.Contraseña;
                VcontraseñaTextBox.Text = usuario.vContraseña;
                TelefonoTextBox.Text = usuario.Telefono;
                CelularTextBox.Text = usuario.Celular;
                DropDownListUsuario.Text = usuario.Tipo.ToString();
            }
            else
            {
                Utils.ShowToastr(this, "No Hay Resultado", "Error", "error");
            }
        }

        protected void BtnNuevo_Click(object sender, EventArgs e)
        {
            LimpiarCampos();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
            Usuario usuario = new Usuario();
            bool paso = false;

            if (HayErrores())
                return;
            else
            {
                usuario = LlenaClase();

                if (usuario.UsuarioId == 0)
                {
                    paso = repositorio.Guardar(usuario);
                    Response.Write("<script>alert('Guardado Exitosamente!!');</script>");
                    LimpiarCampos();
                }
                else
                {
                    int id = ToInt(usuarioidTextBox.Text);
                    usuario = repositorio.Buscar(id);

                    if (usuario != null)
                    {
                        paso = repositorio.Modificar(usuario);
                        Response.Write("<script>alert('Modificado Exitosamente');</script>");
                    }
                    else
                        Response.Write("<script>alert('No se ha encontrado el Id');</script>");
                }

                if (paso)
                {
                    LimpiarCampos();
                }
                else
                    Response.Write("<script>alert('Fallo!! No ha Podido Guardar');</script>");
            }
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
            int id = ToInt(usuarioidTextBox.Text);

            var usuario = repositorio.Buscar(id);

            if (usuario != null)
            {
                if (repositorio.Eliminar(id))
                {
                    Response.Write("<script>alert('Eliminado Exitosamente!!');</script>");
                    LimpiarCampos();
                }
                else
                    Response.Write("<script>alert('Fallo!! No se Puede Eliminar');</script>");
            }
            else
                Response.Write("<script>alert('No Existe');</script>");
        }
    }
}