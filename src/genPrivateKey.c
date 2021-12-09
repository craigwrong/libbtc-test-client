#include "genPrivateKey.h"
#include "btc/chainparams.h"
#include "btc/tool.h"
//#include <stdio.h>

const char* _genPrivateKey()
{
    const btc_chainparams* chain = &btc_chainparams_main;
    size_t sizeout = 128;
    char newprivkey_wif[sizeout];
    char newprivkey_hex[sizeout];
    // Generate a new private key.
    gen_privatekey(chain, newprivkey_wif, sizeout, newprivkey_hex);
    // printf("privatekey WIF: %s\n", newprivkey_wif);
    // printf("privatekey HEX: %s\n", newprivkey_hex);
    const char* return_value = strdup(newprivkey_wif);
    memset(newprivkey_wif, 0, strlen(newprivkey_wif));
    memset(newprivkey_hex, 0, strlen(newprivkey_hex));
    return return_value;
}
