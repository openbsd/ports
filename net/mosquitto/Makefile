# $OpenBSD: Makefile,v 1.3 2015/05/22 09:30:13 ajacoutot Exp $

COMMENT =		opensource MQTT broker
DISTNAME =		mosquitto-1.4.2
REVISION =		1

SHARED_LIBS +=  mosquitto                 0.0 # 1.4
SHARED_LIBS +=  mosquittopp               0.0 # 1.4

CATEGORIES =		net
HOMEPAGE =		http://mosquitto.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c crypto m pthread ssl stdc++ uuid

# No EPROTO in OpenBSD.
CFLAGS +=		-DEPROTO=ECONNABORTED \
			-I${LOCALBASE}/include
MASTER_SITES =		http://mosquitto.org/files/source/

MODULES =		devel/cmake

CONFIGURE_ARGS=		-DWITH_SRV=no

# Pre-shared key support was intentionally removed from libressl
CONFIGURE_ARGS +=	-DWITH_TLS_PSK=no

LIB_DEPENDS =		sysutils/e2fsprogs

NO_TEST =		Yes

.include <bsd.port.mk>
