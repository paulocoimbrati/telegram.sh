#!/bin/bash
if [[ $# -ne 8 ]]; then
	echo "Incorrect number of arguments.\nUsage: ${0} <TOKEN> <CHATID> <IP> <ANOMALIA> <POWER> <RESPONSE> <ACTION>"
	exit 1
fi

############
## CONFIG ##
############
telegram="./telegram "

############
##   END  ##
############
































tgToken=$1
tgChatId=$2
ip=$3
anomalia=$4
potenciapps=$5
potenciabps=$6
resposta=$7
acao=$8
siren=$'\xF0\x9F\x9A\xA8'
msg=`cat <<_EOF_
${siren}<b><u>ALERTA DE ATAQUE</u></b>${siren}

<u>IP</u>
${ip}

<u>TIPO</u>
${anomalia}

<u>POTENCIA pps</u>
${potenciapps}

<u>POTENCIA bps</u>
${potenciabps}

<u>RESPOSTA</u>
${resposta}

<u>ACAO</u>
${acao}

_EOF_
`
echo "${telegram} -H -t ${tgToken} -c ${tgChatId} \"${msg}\""
echo `${telegram} -H -t ${tgToken} -c ${tgChatId} "${msg}"`
#echo $telegram
