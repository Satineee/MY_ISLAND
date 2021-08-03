
const results = document.querySelector("#results");
const saisie = document.querySelector("#search");

saisie.addEventListener("keyup", (event) => {
  results.innerHTML = '';
  // if saisie.value.lenght < 3

  // else

  fetch(``)   // https://my-island.herokuapp.com/autocomplete/${saisie.value}
    .then(response => response.json())
    .then((data) => {
      data.words.forEach((result) => {
        const suggestion = `<li>${result}</li>`;
        results.insertAdjacentHTML("beforeend", suggestion);
      });
    });
});
