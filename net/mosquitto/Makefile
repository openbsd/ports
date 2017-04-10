# $OpenBSD: Makefile,v 1.6 2017/04/10 11:46:32 sthen Exp $

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

MODULES =		devel/cmake

CONFIGURE_ARGS=		-DWITH_SRV=no

# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

LIB_DEPENDS =		sysutils/e2fsprogs

NO_TEST =		Yes

.include <bsd.port.mk>
