TP 3
# Partie 1

`npx eslint backend/app.js`

```
  24:9   error  Strings must use singlequote  quotes
  25:9   error  Strings must use singlequote  quotes
  25:9   error  Strings must use singlequote  quotes
  26:9   error  Strings must use singlequote  quotes
  26:9   error  Strings must use singlequote  quotes
  27:9   error  Strings must use singlequote  quotes
  33:11  error  Missing semicolon             semicolon
```

# Partie 2

Après s'être login sur docker et gitlab (sur la vm donc pour après): 

`sudo docker pull registry.gitlab.com/inesbdl-group/inesbdl-docker-avance/gestion-biblio-debian`


curl avec image du projet gitlab : `docker compose -f compose.dev.yml up -d --build`

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

# Partie 3

## Services docker

`sudo systemctl enable docker`
`sudo systemctl start docker`

## Ajouter un utilisateur deploy

`sudo adduser deploy`
`sudo usermod -aG docker deploy`
`echo 'deploy ALL=(ALL) NOPASSWD:ALL' | sudo tee /etc/sudoers.d/deploy`
`sudo chmod 440 /etc/sudoers.d/deploy`

## paire de clés

`ssh-keygen -t ed25519 -C gitlab-ci-deploy`

Se connecter à la vm  avec deploy

`ssh -i ~/.ssh/gitlab deploy@4.180.113.32`


`sudo -l`

```
Matching Defaults entries for deploy on VM-TP3:
    env_reset, mail_badpass,
    secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin\:/snap/bin,
    use_pty

User deploy may run the following commands on VM-TP3:
    (ALL) NOPASSWD: ALL
```

`groups deploy`
`deploy : deploy users docker`

## Déploiement manuel

`ssh -i ~/.ssh/gitlab deploy@4.180.113.32 docker run registry.gitlab.com/inesbdl-group/inesbdl-docker-avance/gestion-biblio-debian:latest`

## Déploiement automatique

Le déploiement est mis en place dans le `.gitlab-ci.yml` mais cette erreur `fatal : Could not read from remote repository. Please make sure you have the correct access rights and the repository exists.`