COMMENT=	command line client to run WS-Management requests

GH_ACCOUNT=	Openwsman
GH_PROJECT=	wsmancli
GH_TAGNAME=	v2.6.2
REVISION=	0

CATEGORIES=	sysutils

# https://openwsman.github.io/
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
