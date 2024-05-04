const admin = require('./node_modules/firebase-admin');
const serviceAccount = require("./serviceAccountKey.json");

//weapons
const data_weapons = require("C:/Users/ms211102/Desktop/flutter_application_1/flutter_application_1/assets/stub/weapons.json");
const collectionKey_w = "weapons"; //Change!! name of the collection

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: "https://console.firebase.google.com/u/0/project/godfaild-ourproject/database/godfaild-ourproject-default-rtdb/data/~2F?hl=ja" //Change!! your database URL
});

const firestore = admin.firestore();
const settings = {timestampsInSnapshots: true};
firestore.settings(settings);

if (data_weapons && (typeof data_weapons === "object")) {
    Object.keys(data_weapons).forEach(docKey => {
        firestore
        .collection(collectionKey_w)
        .doc(docKey)
        .set(data_weapons[docKey])
        .then((res) => {
            console.log("Document " + docKey + " successfully written!");
        }).catch((error) => {
            console.error("Error writing document: ", error);
        });
    });
}

//armors
const data_armors = require("C:/Users/ms211102/Desktop/flutter_application_1/flutter_application_1/assets/stub/armors.json");
const collectionKey_a = "armors"; //Change!! name of the collection



if (data_armors && (typeof data_armors === "object")) {
    Object.keys(data_armors).forEach(docKey => {
        firestore
        .collection(collectionKey_a)
        .doc(docKey)
        .set(data_armors[docKey])
        .then((res) => {
            console.log("Document " + docKey + " successfully written!");
        }).catch((error) => {
            console.error("Error writing document: ", error);
        });
    });
}