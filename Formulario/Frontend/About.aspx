<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Frontend.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2>Ingreso de datos</h2>
    <hr ='20' />
    <form>
  <div class="form-group col-md-6">
    <label for="firstName">Nombre</label>
    <input type="text" class="form-control is -invalid" data-bind ="value: formulario.firstName"
        placeholder="Digite su nombre" required pattern="[a-zA-Z]+">
  </div>
  <div class="form-group col-md-6">
    <label for="lastName">Apellido</label>
    <input type="text" class="form-control is -invalid" data-bind ="value: formulario.lastName"
        placeholder="Digite su apellido" required pattern="[a-zA-Z]+">
  </div>

   <div class="form-group col-md-6 ">
    <label for="dateBirth">Fecha de nacimiento</label>
    <input type="date" class="form-control is -invalid" data-bind ="value:formulario.dateBirth" placeholder="Digite la fecha de nacimiento" required>
  </div>

  <div class="form-group col-md-6">
    <label for="typeDoc">Tipo documento</label>
    <select class="form-control is -invalid" data-bind ="value: formulario.typeDoc" required>
      <option>CC</option>
      <option>TI</option>
      <option>CE</option>    
    </select>
  </div>
<div class="form-group col-md-6 ">
    <label for="numId">Número documento </label>
    <input type="number" class="form-control is -invalid" data-bind ="value:formulario.numId" 
        placeholder="Digite el número" required>
  </div>

<div class="form-group col-md-6 ">
    <label for="nameEps">Eps </label>
    <input type="text" class="form-control is -invalid" data-bind ="value:formulario.nameEps" 
        placeholder="Nombre Eps" required pattern="[a-zA-Z]+">
  </div>
<button  data-bind="click: create" type="submit" class="btn btn-primary" onclick ="showInfo">Mostrar</button>

  <div class="card col-md-6">
  <div class="card-body">
    <span data-bind="text: formulario.fullName"></span>
      <span data-bind="text: formulario.idComplete"></span>
      <span data-bind="text:formulario.nameEps"></span>
  </div>
</div>

</form>

<script >
    function showInfo() {
        alert ("La informacion es...")
    }
</script>

    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/Formulario.js"></script>

</asp:Content>
