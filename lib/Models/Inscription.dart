import 'dart:ffi';

import 'package:flutter/material.dart';

class Inscription {
  final String username;
  final String Email;
  final String mdp;
  final DatePickerDialog date;
  final String desc;

  Inscription(this.username, this.Email, this.mdp, this.date, this.desc);
}
