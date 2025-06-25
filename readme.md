# Partie 1

Finalement pas de conteneur electron pour lancer l'app desktop car il tente de l'ouvrir directement dans docker. Je testerait plus tard de faire en sorte que ce soit possible. 

`docker compose up --build`

`curl http://localhost:3000`
```
<!DOCTYPE html><html><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="modulepreload" as="script" crossorigin href="/_nuxt/client/node_modules/nuxt/dist/app/entry.js">
<script type="module" src="/_nuxt/@vite/client" crossorigin></script>
<script type="module" src="/_nuxt/client/node_modules/nuxt/dist/app/entry.js" crossorigin></script><script>
if (!window.__NUXT_DEVTOOLS_TIME_METRIC__) {
  Object.defineProperty(window, '__NUXT_DEVTOOLS_TIME_METRIC__', {
    value: {},
    enumerable: false,
    configurable: true,
  })
}
window.__NUXT_DEVTOOLS_TIME_METRIC__.appInit = Date.now()
</script><script>"use strict";(()=>{const t=window,e=document.documentElement,c=["dark","light"],n=getStorageValue("localStorage","nuxt-color-mode")||"system";let i=n==="system"?u():n;const r=e.getAttribute("data-color-mode-forced");r&&(i=r),l(i),t["__NUXT_COLOR_MODE__"]={preference:n,value:i,getColorScheme:u,addColorScheme:l,removeColorScheme:d};function l(o){const s=""+o+"",a="";e.classList?e.classList.add(s):e.className+=" "+s,a&&e.setAttribute("data-"+a,o)}function d(o){const s=""+o+"",a="";e.classList?e.classList.remove(s):e.className=e.className.replace(new RegExp(s,"g"),""),a&&e.removeAttribute("data-"+a)}function f(o){return t.matchMedia("(prefers-color-scheme"+o+")")}function u(){if(t.matchMedia&&f("").media!=="not all"){for(const o of c)if(f(":"+o).matches)return o}return"light"}})();function getStorageValue(t,e){switch(t){case"localStorage":return window.localStorage.getItem(e);case"sessionStorage":return window.sessionStorage.getItem(e);case"cookie":return getCookie(e);default:return null}}function getCookie(t){const c=("; "+window.document.cookie).split("; "+t+"=");if(c.length===2)return c.pop()?.split(";").shift()}</script></head><body><div id="__nuxt"></div><div id="teleports"></div><script type="application/json" data-nuxt-logs="nuxt-app">[[]]</script><script type="application/json" data-nuxt-data="nuxt-app" data-ssr="false" id="__NUXT_DATA__">[{"serverRendered":1},false]</script>
<script>window.__NUXT__={};window.__NUXT__.config={public:{},app:{baseURL:"/",buildId:"dev",buildAssetsDir:"/_nuxt/",cdnURL:""}}</script></body></html>
```

# Partie 2

## Prod

`docker compose -f compose.prod.yml up --build`

`curl http://localhost:3000`

```
<!DOCTYPE html><html><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="modulepreload" as="script" crossorigin href="/_nuxt/client/node_modules/nuxt/dist/app/entry.js">
<script type="module" src="/_nuxt/@vite/client" crossorigin></script>
<script type="module" src="/_nuxt/client/node_modules/nuxt/dist/app/entry.js" crossorigin></script><script>
if (!window.__NUXT_DEVTOOLS_TIME_METRIC__) {
  Object.defineProperty(window, '__NUXT_DEVTOOLS_TIME_METRIC__', {
    value: {},
    enumerable: false,
    configurable: true,
  })
}
window.__NUXT_DEVTOOLS_TIME_METRIC__.appInit = Date.now()
</script><script>"use strict";(()=>{const t=window,e=document.documentElement,c=["dark","light"],n=getStorageValue("localStorage","nuxt-color-mode")||"system";let i=n==="system"?u():n;const r=e.getAttribute("data-color-mode-forced");r&&(i=r),l(i),t["__NUXT_COLOR_MODE__"]={preference:n,value:i,getColorScheme:u,addColorScheme:l,removeColorScheme:d};function l(o){const s=""+o+"",a="";e.classList?e.classList.add(s):e.className+=" "+s,a&&e.setAttribute("data-"+a,o)}function d(o){const s=""+o+"",a="";e.classList?e.classList.remove(s):e.className=e.className.replace(new RegExp(s,"g"),""),a&&e.removeAttribute("data-"+a)}function f(o){return t.matchMedia("(prefers-color-scheme"+o+")")}function u(){if(t.matchMedia&&f("").media!=="not all"){for(const o of c)if(f(":"+o).matches)return o}return"light"}})();function getStorageValue(t,e){switch(t){case"localStorage":return window.localStorage.getItem(e);case"sessionStorage":return window.sessionStorage.getItem(e);case"cookie":return getCookie(e);default:return null}}function getCookie(t){const c=("; "+window.document.cookie).split("; "+t+"=");if(c.length===2)return c.pop()?.split(";").shift()}</script></head><body><div id="__nuxt"></div><div id="teleports"></div><script type="application/json" data-nuxt-logs="nuxt-app">[[]]</script><script type="application/json" data-nuxt-data="nuxt-app" data-ssr="false" id="__NUXT_DATA__">[{"serverRendered":1},false]</script>
<script>window.__NUXT__={};window.__NUXT__.config={public:{},app:{baseURL:"/",buildId:"dev",buildAssetsDir:"/_nuxt/",cdnURL:""}}</script></body></html>
```

## Dev

`docker compose -f compose.dev.yml up --build`

`curl http://localhost:3000`

```
<!DOCTYPE html><html><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="modulepreload" as="script" crossorigin href="/_nuxt/client/node_modules/nuxt/dist/app/entry.js">
<script type="module" src="/_nuxt/@vite/client" crossorigin></script>
<script type="module" src="/_nuxt/client/node_modules/nuxt/dist/app/entry.js" crossorigin></script><script>
if (!window.__NUXT_DEVTOOLS_TIME_METRIC__) {
  Object.defineProperty(window, '__NUXT_DEVTOOLS_TIME_METRIC__', {
    value: {},
    enumerable: false,
    configurable: true,
  })
}
window.__NUXT_DEVTOOLS_TIME_METRIC__.appInit = Date.now()
</script><script>"use strict";(()=>{const t=window,e=document.documentElement,c=["dark","light"],n=getStorageValue("localStorage","nuxt-color-mode")||"system";let i=n==="system"?u():n;const r=e.getAttribute("data-color-mode-forced");r&&(i=r),l(i),t["__NUXT_COLOR_MODE__"]={preference:n,value:i,getColorScheme:u,addColorScheme:l,removeColorScheme:d};function l(o){const s=""+o+"",a="";e.classList?e.classList.add(s):e.className+=" "+s,a&&e.setAttribute("data-"+a,o)}function d(o){const s=""+o+"",a="";e.classList?e.classList.remove(s):e.className=e.className.replace(new RegExp(s,"g"),""),a&&e.removeAttribute("data-"+a)}function f(o){return t.matchMedia("(prefers-color-scheme"+o+")")}function u(){if(t.matchMedia&&f("").media!=="not all"){for(const o of c)if(f(":"+o).matches)return o}return"light"}})();function getStorageValue(t,e){switch(t){case"localStorage":return window.localStorage.getItem(e);case"sessionStorage":return window.sessionStorage.getItem(e);case"cookie":return getCookie(e);default:return null}}function getCookie(t){const c=("; "+window.document.cookie).split("; "+t+"=");if(c.length===2)return c.pop()?.split(";").shift()}</script></head><body><div id="__nuxt"></div><div id="teleports"></div><script type="application/json" data-nuxt-logs="nuxt-app">[[]]</script><script type="application/json" data-nuxt-data="nuxt-app" data-ssr="false" id="__NUXT_DATA__">[{"serverRendered":1},false]</script>
<script>window.__NUXT__={};window.__NUXT__.config={public:{},app:{baseURL:"/",buildId:"dev",buildAssetsDir:"/_nuxt/",cdnURL:""}}</script></body></html>  
```

## Multi stage

`docker compose -f compose.dev.yml up --build`
`docker compose -f compose.prod.yml up --build`


# Partie 3

`docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy --scanners vuln image alpine:latest`
───────────────────────────────┬────────┬─────────────────┐
│            Target             │  Type  │ Vulnerabilities │
├───────────────────────────────┼────────┼─────────────────┤
│ alpine:latest (alpine 3.22.0) │ alpine │        0        │
└───────────────────────────────┴────────┴─────────────────┘

`docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy --scanners vuln image node:latest`
Total: 1 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 0, CRITICAL: 0)

## Mesure

`Measure-Command { docker build -f Dockerfile.debian . -t debian:bookworm}`

```
Days              : 0
Hours             : 0
Minutes           : 0
Seconds           : 6
Milliseconds      : 210
Ticks             : 62102290
TotalDays         : 7,1877650462963E-05
TotalHours        : 0,00172506361111111
TotalMinutes      : 0,103503816666667
TotalSeconds      : 6,210229
TotalMilliseconds : 6210,229
```

`Measure-Command { docker build -f Dockerfile --target prod . -t alpine:3.22.0}`

```

Days              : 0
Hours             : 0
Minutes           : 0
Seconds           : 15
Milliseconds      : 154
Ticks             : 151541681
TotalDays         : 0,00017539546412037
TotalHours        : 0,00420949113888889
TotalMinutes      : 0,252569468333333
TotalSeconds      : 15,1541681
TotalMilliseconds : 15154,1681
```

