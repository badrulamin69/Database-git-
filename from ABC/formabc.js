function form(event){
    event.preventDefault()

    let name = document.getElementById("name").value;
    let contact = document.getElementById("contact").value;
    let remarks = document.getElementById("remarks").value;
    let location = document.getElementById("location").value;

    let sex = document.querySelector("input[name='sex']:checked").value;

    let course = document.querySelectorAll("input[name='course']:checked");

    let courselist = [] ;
    for(i=0; i<course.length; i++){
        courselist.push(course[i].value);
    }
    
    let output=
    " Name " + name + "\n" + 
    " Contact " + contact + "\n" +
    " Remarks " + remarks + "\n" +
    " Sex " + sex + "\n" +
    " Course " + courselist + "\n" +
    " Location " + location + "\n" ;

    window.open("","_blank").document.writeln("<?pre>" + output + "</pre>");
}

document.getElementById("myForm").addEventListener("submit",form);