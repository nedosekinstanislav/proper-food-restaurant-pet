// $(document).ready(function() {
//     // code
// });

function locStr() {

    let som = window.localStorage.getItem('test');

    som = som * 1 + 1; 
    window.localStorage.setItem('test', som);
    
    console.log(som);
};

function addToCart(id) {
    let key = 'product ' + id
    let productId = window.localStorage.getItem(key);
    
    productId = productId * 1 + 1;
    window.localStorage.setItem(key, productId)
    console.log('add product with id: ' + productId);
};