function form(event){
    event.preventDefault()
    let name = document.getElementById("name").value;
    let contact = document.getElementById("contact").value;
    let remarks = document.getElementById("remarks").value;
    let location = document.getElementById("location").value;

<<<<<<< HEAD
=======
    // let sex = document.querySelector("input [name='sex']:checked").value;

>>>>>>> 1ee06e594402eb0f623a550cc9b99f849a6170d8
    let sex = document.querySelector("input[name='sex']:checked").value;
    let course = document.querySelectorAll("input [name='course']:checked");

    let coureslist = [] ;
    for(let i=0; i<course.length; i++){
        coureslist.push(course[i].value);
    }

    let output=
    " name " + name + "\n" +
    " contact " + contact + "\n" +
    " remarks " + remarks + "\n" +
    " location " + location + "\n" +
    " sex " + sex + "\n" +
    " course " + coureslist + "\n" ;

    window.open("","_blank").document.writeln( " <pre> " + output + " </pre> ");
}

document.getElementById("myForm").addEventListener("submit", form);