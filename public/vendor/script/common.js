// $(document).ready(function() {
//     // code
// });

function locStr() {

    let som = window.localStorage.getItem('test');

    som = som * 1 + 1; 
    window.localStorage.setItem('test', som);
    
    alert(som);
};
