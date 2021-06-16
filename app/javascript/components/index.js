import Typed from 'typed.js';

const loadDynamicIndexText = () => {
  const indexTyped = document.getElementById('index-typed-text');
  if(indexTyped) {
    new Typed('#index-typed-text', {
      strings: ["un loup", "une sorcière", "une brebis", "une chaise", "charismatique!"],
      typeSpeed: 40,
      loop: true
    });
  }
}
export { loadDynamicIndexText };
