function itemPrice() {

  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input",() => {
    const inputValue = priceInput.value;
    const addTaxDom = document.getElementById("add-tax-price")
    const addProfit = document.getElementById("profit")

    const tax = Math.floor(`${inputValue}` * 0.1).toLocaleString();
    const profit = Math.floor((`${inputValue}`) - Math.floor(`${inputValue}` * 0.1)).toLocaleString();
    addTaxDom.innerHTML = tax;
    addProfit.innerHTML = profit;
  })
}
window.addEventListener('load',itemPrice)
