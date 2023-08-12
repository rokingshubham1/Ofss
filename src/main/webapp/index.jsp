<html>
<head>
<style>
:root {
    --sans: "Inter", sans-serif, -apple-system, ui-sans-serif, system-ui,
        blinkmacsystemfont, sego ui, roboto, helvetica neue, arial, noto sans,
        sans-serif, monospace;
    --accents-8: #fafafa;
    --accents-7: #eaeaea;
    --accents-6: #999;
    --accents-5: #888;
    --accents-4: #666;
    --accents-3: #444;
    --accents-2: #333;
    --accents-1: #111;
    --transition-left: left .2s ease-in-out;
    --transition-width: width .2s ease-in-out;
    text-decoration: none;
}
*, :after, :before {
    border: 0;
    box-sizing: border-box;
    margin: 0;
    padding: 0
}
html {
    -webkit-text-size-adjust: 100%;
    -moz-text-size-adjust: 100%;
    text-size-adjust: 100%;
    font-size: 20px;
    line-height: 1.15;
    scroll-behavior: auto;
    -moz-tab-size: 4;
    -o-tab-size: 4;
    tab-size: 4
}
body {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    background: #000;
    font-family: var(--sans);
    font-size: 1rem;
    font-weight: 400;
    height: 100vh;
    line-height: inherit;
    overflow-x: hidden;
    overflow-y: auto;
    position: relative;
    text-rendering: optimizespeed;
    width: 100%
}
button {
    background: none;
    line-height: 1.15;
    margin: 0;
    outline: none;
    padding: 0;
    text-transform: none
}
.header {
    align-items: center;
    display: flex;
    height: 100%;
    justify-content: center;
    width: 100%
}
.app-title, .header-bg, .header-icon, .main section .section-title,
    .start, .switcher-curr, .switcher-disabled, .switcher-glow,
    .switcher-stroke {
    pointer-events: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none
}
.header-bg {
    mix-blend-mode: screen;
    opacity: .4;
    top: 0;
    z-index: 3
}
.header-bg svg {
    height: 200%;
    width: 200%;
    transform: translate(-25%, -25%)
}
.header-bg, .header-icon {
    height: 100%;
    left: 0;
    margin: 0 auto;
    overflow: hidden;
    position: absolute;
    right: 0;
    width: 100%
}
.header-icon {
    bottom: 0;
    opacity: .2;
    z-index: 1
}
.app-title {
    align-items: center;
    bottom: 100px;
    display: flex;
    flex-direction: column;
    /*   font-size: 34.18px; */
    font-size: 33px;
    height: 100%;
    justify-content: center;
    left: 0;
    letter-spacing: -3px;
    margin: 0 auto;
    padding: 0 5px;
    position: absolute;
    right: 0;
    width: 100%;
    z-index: 2
}
.app-title h1 {
    background: linear-gradient(to left, #fff, var(--accents-7));
    background-clip: text;
    -webkit-background-clip: text;
    background-position-x: 100%;
    color: transparent;
    font-weight: 500;
    position: relative;
    white-space: nowrap
}
.start {
    height: 44px;
    inset: 0;
    margin: auto;
    position: absolute;
    width: 100%
}
.switcher {
    border: 1px solid var(--accents-2);
    border-radius: 9999px;
    box-shadow: none;
    position: relative;
    z-index: 10
}
.switcher:after {
    background: linear-gradient(to left, var(--accents-2) 20%,
        var(--accents-2) 44%, var(--accents-6) 50%, var(--accents-3) 60%,
        var(--accents-2) 63%, var(--accents-2) 100%);
    background-position-x: var(--x);
    background-size: 200% auto;
    border-radius: inherit;
    bottom: -1px;
    content: "";
    height: 100%;
    left: 0;
    position: absolute;
    transition: background-position-x .6s ease;
    width: 100%;
    z-index: -1
}
.switcher-fixed {
    margin: 0;
    position: fixed;
    top: 15px
}
.switcher-root {
    background: var(--accents-1);
    display: flex;
    overflow: hidden;
    padding: 4px
}
.switcher-btn, .switcher-root {
    border-radius: inherit;
    position: relative
}
.switcher-btn {
    background: transparent;
    border: 0;
    color: var(--accents-5);
    cursor: pointer;
    font-family: Inter, sans-serif;
    font-size: 14px;
    font-weight: 500;
    height: 36px;
    padding: 10px 20px;
    text-decoration: none;
    transition: color .15s ease
}
.btn-active, .switcher-btn:hover {
    color: var(--accents-8)
}
.btn-active {
    text-shadow: 1px 1px 12px hsla(0, 0%, 100%, .4)
}
.switcher-stroke {
    background: linear-gradient(90deg, transparent, var(--accents-4) 20%,
        var(--accents-2) 67.19%, transparent);
    height: 1px;
    left: 32px;
    position: absolute;
    top: -1px;
    width: 90%;
    z-index: -1
}
.switcher-glow {
    background: #fff;
    bottom: -52px;
    filter: blur(32px);
    height: 50px;
    transition: var(--transition-left);
    width: 39.5px;
    z-index: 0
}
.switcher-curr, .switcher-glow {
    border-radius: inherit;
    position: absolute;
    top: 4px
}
.switcher-curr {
    background: hsla(0, 0%, 100%, .08);
    height: 36px;
    left: 4px;
    transition: var(--transition-left), var(--transition-width);
    width: 79px
}
.main {
    display: flex;
    flex-direction: column;
    height: 100%;
    width: 100%
}
.main section {
    background: #000;
    height: 100%;
    min-height: calc(100vh + 15px);
    position: relative;
    z-index: 4
}
.main section:after {
    background: linear-gradient(90deg, transparent, var(--accents-4) 10%,
        var(--accents-4) 80%, transparent);
    content: "";
    height: 1px;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: 2
}
.main section .section-title {
    background: linear-gradient(120deg, var(--accents-8), var(--accents-4)
        70%, var(--accents-8));
    background-clip: text;
    -webkit-background-clip: text;
    background-position-x: 100%;
    color: transparent;
    font-size: 34.18px;
    font-weight: 500;
    letter-spacing: -3px;
    opacity: .9;
    padding: 75px 0 0 25px;
    text-transform: capitalize;
    white-space: nowrap
}
.main section:last-child {
    min-height: 150vh
}
@media (460 px <=width <=640px) {
    .app-title {
        font-size: 27.34px
    }
}
@media (390 px <=width <=460px) {
    .app-title {
        font-size: 24.61px;
        letter-spacing: -2px
    }
    .switcher {
        transform: scale(.9)
    }
}
@media ( width <=390px) {
    .app-title {
        font-size: 21.88px
    }
    .switcher {
        transform: scale(.8)
    }
}
</style>
</head>
<body>
    <script type="text/javascript">
/**
 * Interface for the calcSwitcher function.
 */
export interface ICalcSwitcher {
  (activeBtn: HTMLButtonElement | null, targetBtn: HTMLButtonElement): void;
}
const BTN_ACTIVE_CLASS = 'btn-active';
const GLOW_LEFT_OFFSET = 19.75;
let html: HTMLHtmlElement;
let start: HTMLDivElement;
let switcher: HTMLDivElement;
let switcherRoot: HTMLDivElement;
let switcherBtns: NodeListOf<HTMLButtonElement>;
let mainSections: NodeListOf<HTMLElement>;
let tops: number[];
let resizeTimeout: number;
/**
 * Adjusts the properties of the switcher buttons when clicked.
 * @param {HTMLButtonElement | null} activeBtn - Currently active button element.
 * @param {HTMLButtonElement} targetBtn - Target button element that was clicked.
 */
const calcSwitcher: ICalcSwitcher = (activeBtn, targetBtn) => {
  const glow = document.querySelector('.switcher-glow') as HTMLDivElement;
  const curr = document.querySelector('.switcher-curr') as HTMLDivElement;
  const currLeft: number = +targetBtn.offsetLeft;
  const width: number = +targetBtn.offsetWidth;
  const middle: number = Math.round(width / 2);
  curr.setAttribute('style', `width: ${width}px; left: ${currLeft}px`);
  glow.style.left = `${currLeft + middle - GLOW_LEFT_OFFSET}px`;
  const switcherOffsetWidth: number = switcher.offsetWidth;
  const sumOffsetX: number = Math.round(currLeft + middle + 4);
  const multOffsetX: number = Math.round((sumOffsetX / switcherOffsetWidth) * 100);
  switcher.style.setProperty('--x', `${100 - multOffsetX}%`);
  targetBtn.classList.add(BTN_ACTIVE_CLASS);
  if (!activeBtn) return;
  activeBtn.classList.remove(BTN_ACTIVE_CLASS);
};
/**
 * Handles the switcher button click events.
 * @param {MouseEvent} e - The click event object.
 */
const handleSwitcher = (e: MouseEvent): void => {
  const currentTarget = e.currentTarget as HTMLElement;
  const target = e.target as HTMLElement;
  const activeBtn = currentTarget.querySelector(`.${BTN_ACTIVE_CLASS}`) as HTMLButtonElement | null;
  const closestBtn = target.closest('.switcher-btn') as HTMLButtonElement;
  if (!closestBtn) return;
  if (closestBtn === activeBtn) return;
  calcSwitcher(activeBtn, closestBtn);
  const targetSection = document.querySelector(`#${closestBtn.dataset.scrollTo}`) as HTMLElement;
  window.scrollTo({
    top: targetSection.id === 'home' ? 0 : targetSection.offsetTop + 10,
    behavior: 'smooth',
  });
};
/**
 * Generates an array of top offsets for each main section.
 * @return {number[]} - The array of top offsets.
 */
const generateTops = (): number[] => {
  const topsArray: number[] = [start.offsetTop];
  for (const section of mainSections) {
    topsArray.push(section.offsetTop + start.offsetTop);
  }
  return topsArray;
};
/**
 * Handles the scroll events for the switcher.
 */
const switcherScroll = (): void => {
  const startingTop: number = start.offsetTop;
  const windowScrollY: number = Math.round(window.scrollY);
  const switcherHeight: number = switcher.offsetHeight;
  if (windowScrollY >= startingTop - 15) {
    switcher.classList.add('switcher-fixed');
  } else {
    switcher.classList.remove('switcher-fixed');
  }
  const currDiff: number = windowScrollY - startingTop - switcherHeight;
  const activeBtn = document.querySelector(`.${BTN_ACTIVE_CLASS}`) as HTMLButtonElement | null;
  let currSection: number = 0;
  for (let i = 0; i < tops.length; i++) {
    if (tops[i] > currDiff) {
      currSection = i;
      break;
    }
  }
  const targetBtn = switcherBtns[currSection] as HTMLButtonElement;
  if (activeBtn === targetBtn) return;
  calcSwitcher(activeBtn, targetBtn);
};
/**
 * Handles the window resize events.
 */
const handleResize = (): void => {
  clearTimeout(resizeTimeout);
  resizeTimeout = setTimeout(() => {
    html.style.scrollBehavior = 'auto';
    tops = generateTops();
    html.style.scrollBehavior = 'smooth';
  }, 20);
};
/**
 * Initializes the DOM element variables.
 */
const initElements = (): void => {
  html = document.documentElement as HTMLHtmlElement;
  start = document.querySelector('.start') as HTMLDivElement;
  switcher = document.querySelector('.switcher') as HTMLDivElement;
  switcherRoot = document.querySelector('.switcher-root') as HTMLDivElement;
  switcherBtns = document.querySelectorAll('.switcher-btn') as NodeListOf<HTMLButtonElement>;
  mainSections = document.querySelectorAll('section') as NodeListOf<HTMLElement>;
  tops = generateTops();
};
/**
 * Sets up the initial state of the application on load.
 * 
 * Set history.scrollRestoration to manual to prevent the page from jumping to the top on refresh.
 * https://developer.mozilla.org/en-US/docs/Web/API/History/scrollRestoration
 */
const setUpLoad = (): void => {
  calcSwitcher(null, switcherBtns[0]);
  if (history.scrollRestoration) {
    history.scrollRestoration = 'manual';
  }
};
/**
 * All event listeners are initialized here.
 */
const initListeners = (): void => {
  html.style.scrollBehavior = 'smooth';
  start.style.height = `${switcher.offsetHeight}px`;
  switcherRoot.addEventListener('click', handleSwitcher);
  window.addEventListener('scroll', switcherScroll, true);
  window.addEventListener('resize', handleResize);
};
/**
 * The main initialization function of the application.
 */
const initApp = (): void => {
  initElements();
  setUpLoad();
  initListeners();
};
window.addEventListener('load', initApp, { once: true });
</script>
    <div class=header-icon>
        <svg width=1155 height=1000 viewBox="0 0 1155 1000" fill=none
            xmlns=http://www.w3.org/2000/svg style="height: 100vh; width: 80%;">
            <path d="M577.344 0L1154.69 1000H0L577.344 0Z"
                stroke=url(#paint5_linear_1328_22) stroke-width=3 />
            <path d="M577.344 0L1154.69 1000H0L577.344 0Z" fill=rgba(80,80,80,.5)
                stroke-width=3 />
            <defs>
            <linearGradient id=paint5_linear_1328_22 x1=720 y1=190.164 x2=739.981
                y2=264.235 gradientUnits=userSpaceOnUse>
            <stop stop-color=white offset=0 />
            <stop offset=.5 stop-color=white stop-opacity=.4 /></linearGradient></defs></svg>
    </div>
    <div class=header-bg>
        <?xml version="1.0" encoding="UTF-8"?>
        <svg xmlns="http://www.w3.org/2000/svg" width="1440" height="810"
            viewBox="0 0 1440 810" fill="none">
  <g opacity="1" clip-path="url(#clip0_1328_22)">
    <path class="ring"
                d="M720 842.176C957.133 842.176 1149.37 650.16 1149.37 413.296C1149.37 176.432 957.133 -15.5845 720 -15.5845C482.867 -15.5845 290.633 176.432 290.633 413.296C290.633 650.16 482.867 842.176 720 842.176Z"
                fill="url(#ra)" fill-opacity="0.2"></path>
    <path class="ring"
                d="M1148.87 413.296C1148.87 649.883 956.857 841.676 720 841.676C483.143 841.676 291.133 649.883 291.133 413.296C291.133 176.708 483.143 -15.0845 720 -15.0845C956.857 -15.0845 1148.87 176.708 1148.87 413.296Z"
                stroke="url(#b)" stroke-opacity="0.12"></path>
    <path class="ring"
                d="M719.998 726.264C897.848 726.264 1042.02 582.252 1042.02 404.604C1042.02 226.956 897.848 82.9438 719.998 82.9438C542.148 82.9438 397.973 226.956 397.973 404.604C397.973 582.252 542.148 726.264 719.998 726.264Z"
                fill="black" fill-opacity="0.25"></path>
    <path class="ring"
                d="M1041.52 404.604C1041.52 581.975 897.572 725.764 719.998 725.764C542.424 725.764 398.473 581.975 398.473 404.604C398.473 227.233 542.424 83.4438 719.998 83.4438C897.572 83.4438 1041.52 227.233 1041.52 404.604Z"
                stroke="url(#c)" stroke-opacity="0.15"></path>
    <path class="ring"
                d="M720 619.044C838.566 619.044 934.684 523.036 934.684 404.604C934.684 286.172 838.566 190.164 720 190.164C601.434 190.164 505.316 286.172 505.316 404.604C505.316 523.036 601.434 619.044 720 619.044Z"
                fill="white" fill-opacity="0.01"></path>
    <path class="ring"
                d="M934.184 404.604C934.184 522.759 838.291 618.544 720 618.544C601.709 618.544 505.816 522.759 505.816 404.604C505.816 286.448 601.709 190.664 720 190.664C838.291 190.664 934.184 286.448 934.184 404.604Z"
                stroke="url(#d)" stroke-opacity="0.2"></path>
    <path class="ring"
                d="M934.184 404.604C934.184 522.759 838.291 618.544 720 618.544C601.709 618.544 505.816 522.759 505.816 404.604C505.816 286.448 601.709 190.664 720 190.664C838.291 190.664 934.184 286.448 934.184 404.604Z"
                stroke="url(#e)" stroke-opacity="0.5"></path>
    <path class="ring"
                d="M934.184 404.604C934.184 522.759 838.291 618.544 720 618.544C601.709 618.544 505.816 522.759 505.816 404.604C505.816 286.448 601.709 190.664 720 190.664C838.291 190.664 934.184 286.448 934.184 404.604Z"
                stroke="url(#f)" stroke-opacity="0.6"></path>
  </g>
  <defs>
    <radialGradient id="ra" cx="0" cy="0" r="1"
                gradientUnits="userSpaceOnUse"
                gradientTransform="translate(720 364) rotate(80.3639) scale(379.352 675.064)">
    <stop stop-opacity=".9" stop-color="#000" />
    <stop offset="1" stop-color="#777" />
    </radialGradient>
    <linearGradient id="b" x1="720" y1="-15.5845" x2="720" y2="842.176"
                gradientUnits="userSpaceOnUse">
      <stop stop-color="white" offset="1"></stop>
      <stop offset="1" stop-color="#8D8D8D" stop-opacity="0"></stop>
    </linearGradient>
    <linearGradient id="c" x1="719.998" y1="82.9438" x2="719.998"
                y2="726.264" gradientUnits="userSpaceOnUse">
      <stop stop-color="white" offset="1"></stop>
      <stop offset="1" stop-color="white" stop-opacity="0"></stop>
    </linearGradient>
    <linearGradient id="d" x1="720" y1="190.164" x2="720" y2="525.854"
                gradientUnits="userSpaceOnUse">
      <stop stop-color="white" offset=".5"></stop>
      <stop offset="1" stop-color="white" stop-opacity=".5"></stop>
    </linearGradient>
    <linearGradient id="e" x1="720" y1="190.164" x2="739.981"
                y2="264.235" gradientUnits="userSpaceOnUse">
      <stop stop-color="white" offset="0"></stop>
      <stop offset=".5" stop-color="white" stop-opacity=".4"></stop>
    </linearGradient>
    <linearGradient id="f" x1="720" y1="190.164" x2="724.341"
                y2="205.127" gradientUnits="userSpaceOnUse">
      <stop stop-color="white" offset=".2"></stop>
      <stop offset="1" stop-color="white" stop-opacity="0"></stop>
    </linearGradient>
    <clipPath id="clip0_1328_22">
      <rect width="1440" height="809.208" fill="white"></rect>
    </clipPath>
  </defs>
</svg>
    </div>
    <header class="header sa" id=home>
        <div class=app-title>
            <h1>Welcome to Mutual Fund Managment And Investor PLatform</h1>
        </div>
        <div class=start style="height: 45px"></div>
        <div class=switcher style="--x: 100%;">
            <div aria-hidden=true class=switcher-stroke
                style="position: absolute;"></div>
            <div class=switcher-root>
<!--                 <a href="WelcomeController" class=switcher-btn type=button data-scroll-to=resources>Guest</a> 
 -->                 <a href="hello.html"
                    class=switcher-btn type=button data-scroll-to=people>Login</a> <a
                    href="PrintNameController" class=switcher-btn type=button
                    data-scroll-to=careers>Print Name</a>
                <a href="register.html" class=switcher-btn type=button data-scroll-to=resources>Register</a> 
<!--                 <a href="displayProducts.jsp" class=switcher-btn type=button data-scroll-to=resources>Product Details</a> 
 --><!--              <a href="ofssRed.jsp" class=switcher-btn type=button data-scroll-to=resources>Ofss Red</a> 
<!--  -->             <a href="ProductFetchController" class=switcher-btn type=button data-scroll-to=resources>View All Products</a> 
 -->             <div aria-hidden=true class=switcher-glow style="left: 23.75px;"></div>
                <div aria-hidden=true class=switcher-curr style="left: 4px;"></div>
            </div>
        </div>
    </header>
</body>
</html>
<!-- <html>
<body>
    <h1 id="main">0</h1>
    <a href="WelcomeController">Guest</a>
    <a href="login.html">Login</a>
    <a href="name.html">Print Name</a>
    <button id="btn" onclick="myFunc()">Click</button>
    <script>
    let num = 5;
    const h1 = document.getElementById("main");       
    const myFunc = () => {       
        console.log(num);
        num += 5;
    }
</script>
</body>
</html> -->