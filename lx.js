function get_today(){
    var today = new Date();

    var day = today.getDate(); // Tag

    // Monatsangabe startet bei 0!
    var month = today.getMonth()+1; // Monat

    var year = today.getFullYear(); // Jahr
    if(day < 10) {
            day = '0'+ day;
    }
    if(month < 10) {
            month = '0'+ month;
    }
    today = day + '.' + month + '.' + year;

    return today;
}