// $(document).ready(function() {
//     // code
// });

function addToCart(id) {
    let key = 'product_' + id
    let productId = localStorage.getItem(key);
    
    productId = productId * 1 + 1;
    localStorage.setItem(key, productId);

    updateOrders();
    updateButton();
};

function updateOrders() {
    const ordersUpdate = getOrders();
    $('.orders-input').val(ordersUpdate);
};

function updateButton() {
    let text = 'Корзина (' + getNumber() + ')';
    $('.orders-button').val(text);
};

function getNumber() {
    let cnt = 0;
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
    let orders = '';
    for (let index = 0; index < localStorage.length; index++) {
        let key = localStorage.key(index);
        const value = localStorage.getItem(key);

        if (key.indexOf('product_') == 0){
            orders = orders + key + '=' + value + ',';
        };
    };
    return orders;
};

function cancelOrder() {
    localStorage.clear();
    updateOrders();
    updateButton();
    
    return false;

    const cart = document.querySelector('.cart').text("asd");
};