import swal from 'sweetalert';

const displayBookingConfirm = () => {
  const btnBooking = document.getElementById('btn-fake-booking');
  if (btnBooking) {
    const dates = document.getElementById('start_date')
    btnBooking.addEventListener('click', (event) => {
      swal({
        title: "Vos dates de réservation 👇",
        text: `${dates.value}`,
        icon: "warning",
        closeOnClickOutside: false,
        closeOnEsc: false,
        dangerMode: true,
        buttons: ["Annuler", "Confirmer"]
      }).then((value => {
        if (value) {
          const link = document.querySelector('#btn-submit-booking');
          link.click(booking_path(booking));
        }
      }));
    });
  }
}


export { displayBookingConfirm };