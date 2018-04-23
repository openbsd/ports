# $OpenBSD: Makefile,v 1.16 2018/04/23 08:55:27 tb Exp $

COMMENT =		opensource MQTT broker

DISTNAME =		mosquitto-1.4.15
REVISION =		1

SHARED_LIBS +=  mosquitto                 0.0 # 1.4
SHARED_LIBS +=  mosquittopp               0.0 # 1.4

CATEGORIES =		net
HOMEPAGE =		https://mosquitto.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# EPL/EDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m pthread ssl ${COMPILER_LIBCXX}

CFLAGS +=		-I${LOCALBASE}/include
MASTER_SITES =		https://mosquitto.org/files/source/

MODULES =		devel/cmake \
			lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

CONFIGURE_ARGS=		-DWITH_SRV=no

# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

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
