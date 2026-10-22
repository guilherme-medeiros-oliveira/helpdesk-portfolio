# 🌐 Guia de Troubleshooting N1 — Sem Internet

## 📌 Sobre o projeto

Este guia reúne alguns procedimentos básicos que estou estudando para identificar e tentar resolver problemas de conexão com a internet no Windows.

A ideia é organizar as etapas de atendimento de forma simples, desde as primeiras perguntas ao usuário até os testes de rede e, quando necessário, o encaminhamento para o suporte N2.

**Área:** Suporte Técnico / Help Desk N1  
**Sistema:** Windows  
**Autor:** Guilherme Medeiros

---

## 🔎 1. Verificações iniciais

Antes de executar qualquer comando, é importante entender melhor o problema relatado pelo usuário.

- [ ] Verificar se a internet parou de funcionar completamente ou apenas em um site.
- [ ] Perguntar se outros usuários também estão com o mesmo problema.
- [ ] Conferir se o computador está conectado à rede.
- [ ] Verificar se houve queda de energia ou alguma mudança recente na conexão.

Essas perguntas ajudam a entender melhor o cenário antes de começar os testes.

## 💻 2. Comandos básicos no Windows

Para realizar os primeiros testes, podemos utilizar o Prompt de Comando (CMD).

**Liberar o IP atual:**

```cmd
ipconfig /release
```

**Solicitar um novo endereço IP:**

```cmd
ipconfig /renew
```

**Limpar o cache DNS:**

```cmd
ipconfig /flushdns
```

Esses comandos ajudam em algumas situações relacionadas à configuração de rede e à resolução de nomes. Os comandos de IP são mais adequados para conexões configuradas para obter endereço automaticamente via DHCP.

## 🧪 3. Testes de conexão

**Testar um endereço IP externo:**

```cmd
ping 8.8.8.8
```

Esse teste ajuda a verificar se o computador consegue receber respostas de um endereço externo.

**Testar a resolução de um domínio:**

```cmd
ping google.com
```

Esse comando permite observar se o nome do domínio é resolvido e se o destino responde ao ping.

### Como interpretar os resultados?

- Se o IP externo responder, mas o nome não for resolvido, pode existir um problema de DNS.
- Se nenhum dos testes responder, pode haver uma falha de conexão ou outro bloqueio de rede.
- Se os dois testes funcionarem, mas a internet continuar sem acesso em algum aplicativo ou site, será necessário investigar melhor.

**Observação:** um ping sem resposta não significa necessariamente que a conexão está indisponível, pois alguns destinos bloqueiam esse tipo de teste.

## 🛠️ 4. Tentativas de solução N1

Dependendo do que for identificado, algumas ações básicas podem ser realizadas:

- [ ] Desabilitar e habilitar novamente o adaptador de rede.
- [ ] Se for Wi-Fi, tentar conectar novamente à rede.
- [ ] Em caso de home office, verificar o roteador e reiniciá-lo se for apropriado.
- [ ] Executar novamente os testes após as alterações.
- [ ] Confirmar com o usuário se o acesso voltou a funcionar.

É importante realizar uma alteração por vez e verificar se ela resolveu o problema.

## 🚨 5. Quando encaminhar para o N2?

Se o problema continuar mesmo após as verificações iniciais, pode ser necessário encaminhar o atendimento para um analista de nível 2.

Algumas situações que merecem atenção:

- **IP começando com `169.254`:** pode indicar que o computador não conseguiu obter um endereço IP pelo DHCP.
- **Vários usuários sem conexão:** pode ser um problema mais amplo na rede.
- **Erros de proxy ou certificado:** podem exigir verificações adicionais de configuração ou segurança.
- **Problema não resolvido:** quando as tentativas básicas não funcionam.

Ao encaminhar o chamado, é importante registrar os testes realizados e os resultados encontrados.

## 📝 6. Exemplo de registro de chamado

**Problema:** usuário relata falta de acesso à internet.

**Procedimentos realizados:**
- Limpeza do cache DNS.
- Renovação do endereço IP.
- Testes básicos de conectividade.

**Resultado:** acesso restabelecido após os procedimentos.

**Tempo de atendimento:** 7 minutos.  
**Status:** Resolvido.  
**Responsável:** Guilherme Medeiros.

*Este é um exemplo de registro. Em um atendimento real, os procedimentos, o tempo e o resultado devem corresponder ao que realmente aconteceu.*

---

## 📚 O que estou aprendendo com este projeto?

Com este material, estou organizando meus estudos sobre comandos básicos de rede, diagnóstico de problemas de conectividade, atendimento ao usuário e documentação de chamados.

Meu objetivo é continuar praticando e desenvolver os conhecimentos necessários para trabalhar com Suporte Técnico / Help Desk N1.
