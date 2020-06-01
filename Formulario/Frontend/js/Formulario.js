var Model = function () {
    var self = this
    self.show = ko.observable(true);
    self.age = ko.observable(0);

    self.formulario = ko.mapping.fromJS(
        {
            firstName: "",
            lastName: "",
            dateBirth: "",
            typeDoc: "",
            numId: "",
            nameEps: "",

        });
    self.formulario.fullName = ko.computed(function () {
        return formulario.firstName() + " " + formulario.lastName();
    })
    self.formulario.idComplete = ko.computed(function () {
        return formulario.typeDoc() + " " + formulario.numId();

    })
    self.calculateAge = function (dateBirth) {
        var today = new Date();
        var birthday = new Date(dateBirth);
        var age = today.getFullYear() - birthday.getFullYear();
        var m = today.getMonth() - birthday.getMonth();

        if (m < 0 || (m === 0 && today.getDate() < birthday.getDate())) {
            age--;
        }

        return age;
        
    }

    self.showDataForm = function () {
        var name = $("#name").val();
        var lastname = $("#lastname").val();
        var dateB = $("#dateB").val();
        var document = $("#document").val();
        var number = $("#number").val();
        var eps = $("#eps").val();
        self.age(self.calculateAge(self.formulario.dateBirth()));
       
        if (name == '' || lastname == '' || dateB == '' || document == ''
            || number == '' || eps == '') {
            swal({
                title: "Campos vacios!! ",
                text: "Por favor llenar los campos",
                icon: "error",
                button: "Ok",
            });
        }

        else {
            self.show(false);
        }

    }

    self.showForm = function () {
        self.formulario.firstName(null);
        self.formulario.lastName(null);
        self.formulario.dateBirth(null);
        self.formulario.typeDoc(null);
        self.formulario.numId(null);
        self.formulario.nameEps(null);
         self.show(true);
    }

}

ko.applyBindings(Model);
