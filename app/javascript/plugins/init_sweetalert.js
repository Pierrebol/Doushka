import swal from 'sweetalert';

const displayBookingConfirm = () => {
  const btnBooking = document.getElementById('btn-fake-booking');
  if (btnBooking) {
    const dates = document.getElementById('start_date')
    const price = document.getElementById('total-price')
    btnBooking.addEventListener('click', (event) => {
      swal({
        title: "Vos dates de réservation 👇",
        text: `${dates.value}
        Prix total : ${price.innerText}€`,
        icon: "warning",
        closeOnClickOutside: false,
        closeOnEsc: false,
        dangerMode: true,
        buttons: ["Annuler", "Confirmer"]
      }).then((value => {
        if (value) {
          const link = document.querySelector('#btn-submit-booking');
          link.click();
        }
      }));
    });
  }
}


export { displayBookingConfirm };
