import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#start_date", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#end_date"})],
    minDate: "today",
    onClose: (selectedDates, dateStr, instance) => {
      const daysInRange = document.getElementsByClassName('inRange');
      const daysLengthTotal = daysInRange.length + 1;
      const daysField = document.getElementById('length-of-stay');
      const totalPriceField = document.getElementById('total-price');
      daysField.innerText = daysLengthTotal;
      totalPriceField.innerText = daysLengthTotal * Number.parseInt(totalPriceField.dataset.price_per_day, 10);
    }
  });
}

export { initFlatpickr };
