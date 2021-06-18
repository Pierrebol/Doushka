import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  console.log(banner);
  if(banner) {
    new Typed('#banner-typed-text', {
      strings: ["Soirée déguisée", "mariage", "anniversaire", "diplôme", "tout évènement est bon pour se déguiser!"],
      typeSpeed: 40,
      loop: true
    });
  }
}
export { loadDynamicBannerText };
