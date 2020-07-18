// $(document).ready(function() {
//     // code
// });

function locStr() {

    let som = localStorage.getItem('test');

    som = som * 1 + 1; 
    localStorage.setItem('test', som);
};

function addToCart(id) {
    let key = 'product_ ' + id
    let productId = localStorage.getItem(key);
    
    productId = productId * 1 + 1;
    localStorage.setItem(key, productId)

    updateOrders();
};

function updateOrders() {
    const orders = getOrders();
    $('.orders-input').val(orders);
}

function getNumber() {
    const cnt = 0;
    for (let index = 0; index < localStorage.length; index++) {
        const key = localStorage.key(index);
        const value = localStorage.getItem(key);

        if (key.indexOf('product_') == 0){
            cnt = cnt + value;
        };
    };
    return cnt;
};

function getOrders() {
    const orders = '';
    for (let index = 0; index < localStorage.length; index++) {
        const key = localStorage.key(index);
        const value = localStorage.getItem(key);

        if (key.indexOf('product_') == 0){
           orders = orders + key + '=' + value + ',';
        };
        return orders;
    };
};