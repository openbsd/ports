# $OpenBSD: Makefile,v 1.4 2017/09/22 20:52:58 sthen Exp $

COMMENT =		c client library for the Riemann monitoring system

V =			1.9.1
GH_ACCOUNT =		algernon
GH_PROJECT =		riemann-c-client
GH_TAGNAME =		riemann-c-client-${V}
DISTNAME =		${GH_PROJECT}-${V}
REVISION =		1

SHARED_LIBS +=		riemann-client 0.0 # 0.0

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/algernon/riemann-c-client

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi gmp gnutls hogweed iconv idn2 intl json-c nettle
WANTLIB += p11-kit protobuf-c pthread tasn1 unistring z

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
