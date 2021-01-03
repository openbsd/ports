# $OpenBSD: Makefile,v 1.35 2021/01/03 12:00:12 jasper Exp $

COMMENT =		opensource MQTT broker

DISTNAME =		mosquitto-1.6.12
REVISION =		1

SHARED_LIBS +=  mosquitto                 1.0 # 1.5
SHARED_LIBS +=  mosquittopp               1.0 # 1.5

CATEGORIES =		net
HOMEPAGE =		https://mosquitto.org/

# EPL/EDL
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto m pthread ssl websockets ${COMPILER_LIBCXX}

MASTER_SITES =		https://mosquitto.org/files/source/

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/uthash
LIB_DEPENDS =		www/libwebsockets

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS=		-DWITH_SRV=no \
			-DWITH_WEBSOCKETS=yes
# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS +=		-I${LOCALBASE}/include

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			devel/cunit \
			devel/gmake

pre-test:
	ln -fs ${WRKBUILD}/src/mosquitto ${WRKSRC}/src/
	${SUBST_CMD} ${WRKSRC}/test/unit/Makefile

do-test:
	cd ${WRKSRC}/test; env ${MAKE_ENV} \
	    WRKLIB=${WRKBUILD}/lib/libmosquitto.so.${LIBmosquitto_VERSION} \
	    WRKLIBPP=${WRKBUILD}/lib/cpp/libmosquittopp.so.${LIBmosquittopp_VERSION} \
	    LDFLAGS="-L${LOCALBASE}/lib" gmake WITH_TLS_PSK=no test

.include <bsd.port.mk>
