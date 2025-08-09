# EMQX 5.7.2 Simple Docker Setup for Railway Deployment

## Contenu

- Dockerfile
- config/emqx.conf
- config/acl.conf
- scripts/create-users.sh

## Avant de déployer

1. Remplis la variable d'environnement `EMQX_CLUSTER_COOKIE` dans Railway (ex : une chaîne secrète).
2. Railway gère automatiquement le TLS via son proxy.

## Ports à exposer sur Railway

- 1883 : MQTT TCP (non TLS interne)
- 8083 : MQTT WebSocket (non TLS interne)
- 18083 : Dashboard EMQX (optionnel, sécurise-le !)

## Démarrage

Railway build et lance le container via Dockerfile.

## Connexion client MQTT Web (exemple)

```js
const client = mqtt.connect('wss://yourapp.up.railway.app/mqtt', {
  username: 'client',
  password: 'clientpass',
  protocolVersion: 5
});
