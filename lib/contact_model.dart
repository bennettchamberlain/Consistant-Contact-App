import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:riverpod/riverpod.dart';

final contactListProvider =
    StateNotifierProvider<ContactList1, List<Contact>>((ref) {
  return ContactList1();
});

class ContactList1 extends StateNotifier<List<Contact>> {
  ContactList1() : super([]);

  void addContact(Contact contact) {
    state = [...state, contact];
  }
}
