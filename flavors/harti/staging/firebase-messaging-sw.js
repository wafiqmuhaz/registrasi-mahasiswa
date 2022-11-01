importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts(
  "https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js"
);

firebase.initializeApp({
  apiKey: "AIzaSyCQgCUwaPsUWphcQo-6-UGtxoSpD_kLD6s",
  authDomain: "harti-staging.firebaseapp.com",
  projectId: "harti-staging",
  storageBucket: "harti-staging.appspot.com",
  messagingSenderId: "337813673890",
  appId: "1:337813673890:web:65cacfd90dc461aee704fb",
  measurementId: "G-7MB6MZ0G21",
});
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
  const promiseChain = clients
    .matchAll({
      type: "window",
      includeUncontrolled: true,
    })
    .then((windowClients) => {
      for (const element of windowClients) {
        const windowClient = element;
        windowClient.postMessage(payload);
      }
    })
    .then(() => {
      return registration.showNotification("New Message");
    });
  return promiseChain;
});
self.addEventListener("notificationclick", function (event) {
  console.log("notification received: ", event);
});
