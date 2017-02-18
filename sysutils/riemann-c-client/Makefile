# $OpenBSD: Makefile,v 1.2 2017/02/18 17:32:37 ajacoutot Exp $

COMMENT =		c client library for the Riemann monitoring system

V =			1.9.1
GH_ACCOUNT =		algernon
GH_PROJECT =		riemann-c-client
GH_TAGNAME =		riemann-c-client-${V}
DISTNAME =		${GH_PROJECT}-${V}

SHARED_LIBS +=		riemann-client 0.0 # 0.0

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/algernon/riemann-c-client

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c gmp gnutls ffi hogweed intl iconv idn2 json-c \
			nettle protobuf-c p11-kit pthread tasn1 z

BUILD_DEPENDS =		devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \

LIB_DEPENDS =		devel/protobuf-c \
			security/gnutls \
			devel/json-c

AUTOCONF_VERSION =	2.67
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes

CFLAGS+=		-DEPROTO=ENOPROTOOPT
# needs riemann running
NO_TEST=		Yes

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -f -i

.include <bsd.port.mk>
