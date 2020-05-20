var Model = function () {
    var self= this

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
    return formulario.firstName() + formulario.lastName();
})
self.formulario.idComplete = ko.computed(function () {
    return formulario.typeDoc() + formulario.numId();

})
self.formulario.age = function (dateBirth) {
    var today = new Date();
    var birthday = new Date(dateBirth);
    var age = today.getFullYear() - birthday.getFullYear();
    var m = today.getMonth() - birthday.getMonth();

    if (m < 0 || (m === 0 && today.getDate() < birthday.getDate())) {
        age--;
    }

    return age;
    }

    self.create = function () {
        console.log(self.formulario.firstName())
    }

}

ko.applyBindings(Model);
