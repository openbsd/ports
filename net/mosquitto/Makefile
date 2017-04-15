# $OpenBSD: Makefile,v 1.7 2017/04/15 20:46:16 sthen Exp $

COMMENT =		opensource MQTT broker

DISTNAME =		mosquitto-1.4.11

SHARED_LIBS +=  mosquitto                 0.0 # 1.4
SHARED_LIBS +=  mosquittopp               0.0 # 1.4

CATEGORIES =		net
HOMEPAGE =		http://mosquitto.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# EPL/EDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m pthread ssl ${LIBCXX} uuid

CFLAGS +=		-I${LOCALBASE}/include
MASTER_SITES =		http://mosquitto.org/files/source/

MODULES =		devel/cmake \
			lang/python

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No

CONFIGURE_ARGS=		-DWITH_SRV=no

# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

LIB_DEPENDS =		sysutils/e2fsprogs

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
