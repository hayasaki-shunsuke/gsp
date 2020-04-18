(function() {
  window.draw_graph = function() {
    var ctx = document.getElementById('myChart');

    var data = {
      labels: ["1月", "2月", "3月", "4月", "5月"],
      datasets: [{
        label: 'マリオ',
        data: [6800000, 5700000, 4703300, 5203984, 5890874],
        borderColor: 'rgba(255, 200, 100, 1)',
        lineTension: 0,
        fill: false,
        borderWidth: 3
      }]
    };

    var options = {
      scales: {
        yAxes: [{
          ticks: {
            min: 300
            //beginAtZero: true
          }
        }]
      }
    };

    var myChart = new Chart(ctx, {
      type: 'line',
      data: data,
      options: options
    });
  };

}).call(this);
