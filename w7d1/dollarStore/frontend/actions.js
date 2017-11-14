const selectCurrency = (baseCurrency, rates) => {
  return {
    type: "SWITCH_CURRENCY",
    baseCurrency: baseCurrency,
    rates: rates
  };
};

window.selectCurrecy = selectCurrency;

export default selectCurrency;
