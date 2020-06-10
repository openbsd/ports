# $OpenBSD: Makefile,v 1.30 2020/06/10 07:39:56 jasper Exp $

COMMENT =		opensource MQTT broker

DISTNAME =		mosquitto-1.6.10

SHARED_LIBS +=  mosquitto                 1.0 # 1.5
SHARED_LIBS +=  mosquittopp               1.0 # 1.5

CATEGORIES =		net
HOMEPAGE =		https://mosquitto.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# EPL/EDL
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto m pthread ssl ${COMPILER_LIBCXX}

MASTER_SITES =		https://mosquitto.org/files/source/

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/uthash

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS=		-DWITH_SRV=no
# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

CFLAGS +=		-I${LOCALBASE}/include

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			devel/gmake

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -fs ${WRKBUILD}/src/mosquitto ${WRKSRC}/src/

do-test:
	cd ${WRKSRC}/test; env ${MAKE_ENV} \
	    WRKLIB=${WRKBUILD}/lib/libmosquitto.so.${LIBmosquitto_VERSION} \
	    WRKLIBPP=${WRKBUILD}/lib/cpp/libmosquittopp.so.${LIBmosquittopp_VERSION} \
	    gmake WITH_TLS_PSK=no test

.include <bsd.port.mk>
