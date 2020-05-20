var formulario {
    firstName: ko.observable(),
    lastName: ko.observable(),
    dateBirth: ko.observable(),
    typeDoc: ko.observable(),
    numId: ko.observable(),
    nameEps: ko.observable(),
};
formulario.fullName = ko.computed(function () {
    return formulario.firstName() + formulario.lastName();
})
formulario.idComplete = ko.computed(function () {
    return formulario.typeDoc() + formulario.numId();
    
})
formulario.age = function (dateBirth) {
    var today = new Date();
    var birthday = new Date(dateBirth);
    var age = today.getFullYear() - birthday.getFullYear();
    var m = today.getMonth() - birthday.getMonth();

    if (m < 0 || (m === 0 && today.getDate() < birthday.getDate())) {
        age--;
    }

    return age; 
}

ko.applyBindings(formulario);
