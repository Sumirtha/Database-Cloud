function validateForm() {
// Name check
if (!document.getElementById('name').value.trim()) {

alert("Name is required");
return false;
    }

    // Email check
    if (!document.getElementById('email').value.includes('@')) {
    alert('valid email required');
    return false;
    }

    // Password check
    let passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$/;
    if (!passwordRegex.test(document.getElementById('password').value)) {
    alert('Enter valid password with 8 characters with special character and lower and upper case');
    return false;
    }

    // confirm password check
    if (document.getElementById('confirm_password').value !== document.getElementById('password').value){
    alert('Paswords must match');
    return false;
    }

    //Category radio check - using first radio as reference
    if (!document.getElementById('student').checked &&
    document.getElementById('professional').checked) {
    alert('Select Srudent or Professional');
    return false;
    }

    //State select check
    if (!document.getElementById('country').value) {
    alert('Select a state');
    return false;
    }

     // Age check
    if (document.getElementById('student').checked) {
    let dob = document.getElementById('dob').value;
    let age = new Date().getFullYear() - new Date(dob).getFullYear();

    if (age >= 25) {
        alert("Oopies, age must be less than 25");
        return false;
    }
    }

    //Surname-Check

    let name = document.getElementById('name').value.trim();
    if (!name.includes(' ')) {
        alert('Kindly enter your full name');
        return false;
    }

    //Terms checkbox check - give it an ID in HTML
    if (!document.getElementById('terms').checked) {
    alert('Please agree to terms and conditions');
    return false;
    }

    alert('Registration Sucessful');
    return true;
}
function toggleSalary() {
    const professional = document.getElementById("professional");
    document.getElementById("salaryDiv").hidden = !professional.checked;
    }