COMMENT =	opensource MQTT broker

DISTNAME =	mosquitto-2.0.20
REVISION =	0

SHARED_LIBS +=  mosquitto                 2.1
SHARED_LIBS +=  mosquittopp               2.0

CATEGORIES =		net
HOMEPAGE =		https://mosquitto.org/

# EPL/EDL
PERMIT_PACKAGE =	Yes

WANTLIB +=		c cjson crypto m pthread ssl websockets ${COMPILER_LIBCXX}

SITES =			https://mosquitto.org/files/source/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/uthash
LIB_DEPENDS =		devel/cjson \
			www/libwebsockets

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_ARGS=		-DWITH_SRV=no \
			-DWITH_WEBSOCKETS=yes \
			-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS +=		-I${LOCALBASE}/include

TEST_DEPENDS=		${MODPY_RUN_DEPENDS} \
			${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/cunit \
			devel/gmake \
			sysutils/py-psutil

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
