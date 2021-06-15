import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Soirée déguisée", "mariage", "enterrement", "diplôme", "tout évènement est bon pour se déguiser!"],
    typeSpeed: 40,
    loop: true
  });
}
export { loadDynamicBannerText };
