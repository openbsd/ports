COMMENT =		library with PKCS#11 providers for end-user applications
CATEGORIES =		security
DISTNAME =		pkcs11-helper-1.30.0

SHARED_LIBS =		pkcs11-helper	0.0	# 1.0

WANTLIB =		crypto

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv2 or BSD
PERMIT_PACKAGE =	Yes

HOMEPAGE= 		https://github.com/OpenSC/${PKGSTEM}
SITES =			${HOMEPAGE}/releases/download/${DISTNAME}/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-crypto-engine-gnutls \
			--disable-crypto-engine-mbedtls \
			--disable-crypto-engine-nss \
			--disable-doc \
			--disable-static
LIBTOOL_FLAGS =		--tag=disable-static

# XXX 'openvpn --show-pkcs11-ids' spews
#   pthread_mutex_destroy on mutex with waiters!
# and pthread_atfork(3) handlers cause OpenVPN child processes (ifconfig, etc.)
# to SIGABRT inside fork(2) due to mutexes ending up with 'parent == NULL'.
#
# Disable threading (and dependent slotevent) to prevent OpenVPN crashes
# regardless of actual smart card usage.
CONFIGURE_ARGS +=	--disable-slotevent \
			--disable-threading

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
