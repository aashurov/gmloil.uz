<div class="card-block">
    <div id="cart_min">
<!--    <p>В корзине: <b>{count} {unit}</b></p>
    <p>на сумму: <b>{total}</b></p> -->
        
                    <div class="h-bar__link wb-flex">
                        <div class="h-bar__icon"><i class="ri-shopping-cart-2-line"></i></div>
                        <div class="h-bar__text">Корзина</div>
                    </div>
    </div>

<div class="bg_0"></div>

{* Товары в корзине - table *}
<div id="ks_goods" class="scroll">
    {goods}
    <a href="/?do=cart" class="order_kylshop">Оформить заказ</a>
    <a href="#" class="clear_cart">Очистить корзину</a>
    <a href="#" class="close" title="Закрыть"></a>
</div>
</div>