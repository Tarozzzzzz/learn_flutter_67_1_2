import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference persons =
      FirebaseFirestore.instance.collection('persons');

  // Create
  Future<void> addPerson(String personName, String personEmail, int personAge) {
    return persons.add({
      'personName': personName,
      'personEmail': personEmail,
      'personAge': personAge,
      'timestamp': Timestamp.now(),
    });
  }

  // Read (stream)
  Stream<QuerySnapshot> getPersons() {
    return persons.orderBy('timestamp', descending: true).snapshots();
  }

  // Get by id
  Future<Map<String, dynamic>?> getPersonById(String personId) async {
    final doc = await persons.doc(personId).get();
    if (doc.exists) {
      return doc.data() as Map<String, dynamic>;
    }
    return null;
  }

  // Update
  Future<void> updatePerson(
    String personId,
    String personName,
    String personEmail,
    int personAge,
  ) {
    return persons.doc(personId).update({
      'personName': personName,
      'personEmail': personEmail,
      'personAge': personAge,
      'timestamp': Timestamp.now(),
    });
  }

  // Delete
  Future<void> deletePerson(String personId) {
    return persons.doc(personId).delete();
  }
}
