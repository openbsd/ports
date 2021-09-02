# $OpenBSD: Makefile,v 1.47 2021/09/02 13:13:50 sthen Exp $

COMMENT =		opensource MQTT broker

V =			2.0.12
DISTNAME =		mosquitto-$V

SHARED_LIBS +=  mosquitto                 2.0 # 1.5
SHARED_LIBS +=  mosquittopp               2.0 # 1.5

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

BUILD_DEPENDS =		devel/uthash
LIB_DEPENDS =		www/libwebsockets

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS=		-DWITH_SRV=no \
			-DWITH_WEBSOCKETS=yes \
			-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS +=		-I${LOCALBASE}/include

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			${BUILD_PKGPATH}-=$V \
			devel/cunit \
			devel/gmake

pre-test:
	ln -fs ${WRKBUILD}/src/mosquitto ${WRKSRC}/src/
	ln -fs ${WRKBUILD}/client/mosquitto_{p,s}ub ${WRKSRC}/client/
	${SUBST_CMD} ${WRKSRC}/test/unit/Makefile

# Pre-shared key support was intentionally removed from libressl
# We don't have cJSON in ports yet
do-test:
	cd ${WRKSRC}/test; env ${MAKE_ENV} \
	    WRKLIB=${WRKBUILD}/lib/libmosquitto.so.${LIBmosquitto_VERSION} \
	    WRKLIBPP=${WRKBUILD}/lib/cpp/libmosquittopp.so.${LIBmosquittopp_VERSION} \
	    LDFLAGS="-L${LOCALBASE}/lib" CXX="${CXX}" \
	    gmake WITH_TLS_PSK=no WITH_CJSON=no test

.include <bsd.port.mk>
