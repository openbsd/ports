# $OpenBSD: Makefile,v 1.4 2016/08/13 15:18:58 jasper Exp $

COMMENT =		opensource MQTT broker
DISTNAME =		mosquitto-1.4.9

SHARED_LIBS +=  mosquitto                 0.0 # 1.4
SHARED_LIBS +=  mosquittopp               0.0 # 1.4

CATEGORIES =		net
HOMEPAGE =		http://mosquitto.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# EPL/EDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m pthread ssl stdc++ uuid

CFLAGS +=		-I${LOCALBASE}/include
MASTER_SITES =		http://mosquitto.org/files/source/

MODULES =		devel/cmake

CONFIGURE_ARGS=		-DWITH_SRV=no

# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

LIB_DEPENDS =		sysutils/e2fsprogs

NO_TEST =		Yes

.include <bsd.port.mk>
