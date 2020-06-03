<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Frontend.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <hr />
     <button class="btn btn-primary" data-bind="click: getData">Ejemplo</button>
    <div data-bind="visible:show()">
        <h2>Ingreso de datos</h2>

        <form >
            <div class="form-group col-md-6">
                <label for="firstName">Nombre</label>
                <input type="text" id="name" class="form-control is -invalid" data-bind="value: formulario.firstName"
                    placeholder="Digite su nombre"
                    oninput="this.value = this.value.replace(/[^a-zA-Z]/g, '').replace(/(\..*)\./g, '$1');">
            </div>
            <div class="form-group col-md-6">
                <label for="lastName">Apellido</label>
                <input type="text" id="lastname" class="form-control is -invalid" data-bind="value: formulario.lastName"
                    placeholder="Digite su apellido"
                    oninput="this.value = this.value.replace(/[^a-zA-Z]/g, '').replace(/(\..*)\./g, '$1');">
            </div>

            <div class="form-group col-md-6 ">
                <label for="dateBirth">Fecha de nacimiento</label>
                <input type="date" id="dateB" class="form-control is -invalid" data-bind="value:formulario.dateBirth"
                    placeholder="Digite la fecha de nacimiento">
            </div>

            <div class="form-group col-md-6">
                <label for="typeDoc">Tipo documento</label>
                <select id="document" class="form-control is -invalid" data-bind="value: formulario.typeDoc">
                    <option selected>Seleccionar...</option>
                    <option>CC</option>
                    <option>TI</option>
                    <option>CE</option>
                </select>
            </div>
            <div class="form-group col-md-6 ">
                <label for="numId">Número documento </label>
                <input type="number" id="number" class="form-control is -invalid" data-bind="value:formulario.numId"
                    placeholder="Digite el número">
            </div>

            <div class="form-group col-md-6 ">
                <label for="nameEps">Eps </label>
                <input type="text" id="eps" class="form-control is -invalid" data-bind="value:formulario.nameEps"
                    placeholder="Nombre Eps"
                    oninput="this.value = this.value.replace(/[^a-zA-Z]/g, '').replace(/(\..*)\./g, '$1');">
            </div>
            <div class="col-md-12">

                <button class="btn btn-primary" data-bind="click: showDataForm">Mostrar</button>

            </div>

        </form>
    </div>

    <div data-bind="visible:!show()">
        <label>
            <h4>Datos completos</h4>
            <p> 
            <label>Nombre Completo :</label>
            <span data-bind="text:formulario.fullName"></span>
                </p>
            <p>
                <label>Documento De Identidad :</label>
                <span data-bind="text:formulario.idComplete"></span>
            </p>
             <p>
                <label>Edad :</label>
                <span data-bind="text:age()"></span>
            </p>
            <p>
                <label>Eps :</label>
                <span data-bind="text:formulario.nameEps"></span>
            </p>
           
        </label>

        <p>
            <button class="btn btn-primary"  data-bind="click: showForm">Volver</button>
        </p>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/Formulario.js"></script>

</asp:Content>
