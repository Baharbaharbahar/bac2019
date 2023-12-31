function test() {
    const email = document.getElementById("email").value;
    pnt = email.indexOf(".");
    at = email.indexOf("@");
    ch1 = email.substr(0, at);
    ch2 = email.substr(at + 1, pnt - (at + 1));
    ch3 = email.substr(pnt);
    if (email == "") {
        alert("Entre Votre Email SVP");
        return false;
    }
    if (pnt == -1 || at == -1) {
        alert("Il n'y a pas de point / @");
        return false;
    }
    if (pnt < at) {
        alert("Vérifier Les Positions des Point et @ SVP");
        return false;
    }
    if (
        ch1 == "" ||
        ch2 == "" ||
        ch3 == "" ||
        !alpha(ch1) ||
        !alpha(ch2) ||
        !alpha(ch3)
    ) {
        alert("Vérifier Votre Email SVP");
        return false;
    }
    if (ch3.length < 2 || ch3.length > 4 && !alpha(ch3)) {
        alert("'.' doit contenir entre 2 et 4 caractères alphabétiques");
        return false;
    }
    alert("Bravo");
    const password = document.getElementById("password").value;
    if (password.length != 6 || isNaN(password) != 1 || !alpha(password)) {
        alert('Le mot de passe doit contenir exactement 6 caractères :\nUne lettre Majuscule,\na lettre');
    }
}

function alpha(ch) {
    for (let i = 0; i < ch.length; i++) {
        if (ch[i] < "A" || ch[i] > "Z" && ch[i] < "a" || ch[i] > "z" && ch[i] != "") {
            test = false;
        }
        return true;
    }
}
