part of helpers;

String currency(number) =>
    NumberFormat.currency(decimalDigits: 0, locale: "id_ID").format(number);
