// app/javascript/components/banner.js
import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["¡Buenos días!", "Let me prepare you a trago..."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };