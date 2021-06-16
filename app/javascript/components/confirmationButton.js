const changeBookingStatus = () => {

const button = document.getElementById("confirmation_button");
console.log(button);
if(button) {
  button.addEventListener("click", (event) => {
    console.log(button.dataset.bookingId)
  });
}
}

export { changeBookingStatus };
