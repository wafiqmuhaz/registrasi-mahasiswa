importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts(
  "https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js"
);

firebase.initializeApp({
  apiKey: "AIzaSyDPvN1WxLluGX1Uu-w32qaGkDuOveSeYl4",
  authDomain: "harti-production.firebaseapp.com",
  projectId: "harti-production",
  storageBucket: "harti-production.appspot.com",
  messagingSenderId: "476570204161",
  appId: "1:476570204161:web:b986f648646d8c3b91e800",
  measurementId: "G-TVQ37RR5NP",
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
