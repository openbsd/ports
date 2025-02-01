COMMENT=	command line client to run WS-Management requests

GH_ACCOUNT=	Openwsman
GH_PROJECT=	wsmancli
#GH_TAGNAME=	v2.6.2
GH_COMMIT=	50f8d2f0c387a7e9f42c74b541625ac244bf3219
DISTNAME=	wsmancli-2.8.0pre20241206

CATEGORIES=	sysutils

# https://openwsman.github.io/
# https://github.com/Openwsman/wsmancli
HOMEPAGE=	https://github.com/Openwsman/openwsman/wiki/openwsman-command-line-client

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curl iconv lzma m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += pthread ssl wsman wsman_client wsman_curl_client_transport
WANTLIB += xml2 z

CONFIGURE_STYLE=autoreconf
AUTORECONF=	./bootstrap
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16

LIB_DEPENDS=	sysutils/openwsman

.include <bsd.port.mk>
