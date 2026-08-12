# Kraken Orb

Protótipo visual para a tela LCD do NZXT Kraken via CAM Custom Web Integration.

## Teste local

Na pasta do projeto:

```text
python -m http.server 47821
```

URL para adicionar como card no CAM:

```text
http://127.0.0.1:47821/
```

A página usa a ponte oficial disponibilizada pelo CAM:

```javascript
window.nzxt.v1.onMonitoringDataUpdate(data)
```

Fora do CAM, a animação usa métricas simuladas. Dentro do card, ela passa automaticamente a usar `cpus`, `gpus` e `kraken.liquidTemperature` enviados pelo CAM.

## Métricas planejadas

- CPU Load
- GPU Load
- CPU Temperature
- GPU Temperature
- Liquid Temperature
