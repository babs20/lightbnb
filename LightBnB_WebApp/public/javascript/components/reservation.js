$(() => {

  const $reservation = $(`
  <form id="sign-up-form" class="sign-up-form">
        <p>Make a Reservation</p>

        <div class="sign-up-form__field-wrapper">
        <p>Start Date</p>
            <input type="date" name="start_date" placeholder="Start Date">
          </div>
          <p>End Date</p>
        <div class="sign-up-form__field-wrapper">
          <input type="date" name="end_date" placeholder="End Date">
        </div>
  
        <div class="sign-up-form__field-wrapper">
            <button class="reservation-submit">Make Reservation</button>
            <a id="sign-up-form__cancel" href="#">Cancel</a>
        </div>
      </form>
  `);
  window.$reservation = $reservation;

  $reservation.on('submit', function (event) {
    event.preventDefault();
    $(this).append(`<input type="hidden" name="property_id" value="${$(this).find('.reservation-submit').val()}" />`);

    const data = $(this).serialize();

    makeReservation(data)
      .then(res => res)
      .catch(err => console.log(err));
    alert('Successful Reservation');
    views_manager.show('listings');
  });

  $('body').on('click', '#sign-up-form__cancel', function () {
    views_manager.show('listings');
    return false;
  });

});