import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const divElement = this.element;
    const data = JSON.parse(divElement.getAttribute('data-book-sells'));
    const id = divElement.getAttribute('book-id');
    let xValues = [];

    for(let i = 0; i < data.length; i++) {
      xValues.push(i);
    }

    new Chart(`book_chart_${id}`, {
      type: "line",
      data: {
        labels: xValues,
        datasets: [{
          fill: false,
          lineTension: 0,
          backgroundColor:"rgba(255,0,0)",
          borderColor: "rgba(255,0,0,.2)",
          data: data
        }]
      },
      options: {
        legend: { display: false },
        title: { display: false }
      }
    });
  }
}
