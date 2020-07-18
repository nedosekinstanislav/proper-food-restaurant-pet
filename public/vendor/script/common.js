// $(document).ready(function() {
//     // code
// });

function locStr() {

    let som = window.localStorage.getItem('test');

    som = som * 1 + 1; 
    window.localStorage.setItem('test', som);
};

function addToCart(id) {
    let key = 'product_ ' + id
    let productId = window.localStorage.getItem(key);
    
    productId = productId * 1 + 1;
    window.localStorage.setItem(key, productId)

    updateOrders();
};

function updateOrders() {
    const orders = getOrders();
    $('.orders-input').val(orders);
};

function getNumber() {
    const cnt = 0;
    for (let index = 0; index < window.localStorage.length; index++) {
        const key = window.localStorage.key(index);
        const value = window.localStorage.getItem(key);

        if (key.indexOf('product_') == 0){
            cnt = cnt + value;
        };
    };
    return cnt;
};

function getOrders() {
    let orders = '';
    for (let index = 0; index < window.localStorage.length; index++) {
        const key = window.localStorage.key(index);
        const value = window.localStorage.getItem(key);

        if (key.indexOf('product_') == 0){
            orders = orders + key + '=' + value + ',';
        };
    };
    return orders;
};