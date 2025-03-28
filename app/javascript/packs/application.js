// Import Rails UJS (Unobtrusive JavaScript) for Rails features
import Rails from "@rails/ujs";
Rails.start();

// Import ActionCable for real-time features
import "channels";

// Import React components
import "packs/hello_react"; 

console.log("Webpacker is running!");
