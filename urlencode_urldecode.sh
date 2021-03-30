!/bin/bash
function urlencode { local dataLength="${#1}"; local index; for ((index = 0;index < dataLength;index++)); do local char="${1:index:1}"; case $char in [a-zA-Z0-9.~_-]) printf "$char"; ;; *) printf "%%%0>
function urldecode() { : "${*//+/ }"; echo -e "${_//%/\\x}"; }

echo "urlencode:"
LOGIN="username=user&password=98038225"
A="/plugin/ui/argus-streletzkpp/photoidentify/"
B=$(urlencode $A)
C="/neyross/user/http/login?$LOGIN&next=$B"
D=$(urlencode $C)
E="/startup/?next=$D"
echo $E


echo "urldecode:"

F=$(urldecode $E)

echo $F
