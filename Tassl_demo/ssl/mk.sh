#/bin/bash
PROGRAMES="sm2svr sm2cli"
INC_DIR=/root/tassl-1.1.1_lib/include
LIB_DIR=/root/tassl-1.1.1_lib/lib

if [ $1"X" == "cleanX" ]; then
printf "cleaning the programe %s.....\n" $PROGRAMES
        rm -rf ${PROGRAMES}
else
printf "compiling the programe.....\n"
gcc -ggdb3 -O0 -o sm2svr sm2svr.c -I${INC_DIR}  ${LIB_DIR}/libssl.a ${LIB_DIR}/libcrypto.a  -ldl -lpthread
gcc -ggdb3 -O0 -o sm2cli sm2cli.c -I${INC_DIR}  ${LIB_DIR}/libssl.a ${LIB_DIR}/libcrypto.a  -ldl -lpthread
fi
