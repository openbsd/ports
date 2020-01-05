# $OpenBSD: Makefile,v 1.1.1.1 2020/01/05 21:59:28 sthen Exp $

COMMENT =	subscribe to multiple MQTT brokers and topics simultaneously

GH_ACCOUNT =	jpmens
GH_PROJECT =	msoak
GH_TAGNAME =	0.6

CATEGORIES =	net

MAINTAINER =	Jan-Piet Mens <ports@jpmens.net>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODLUA_WANTLIB} c config mosquitto

MODULES =	lang/lua
MODLUA_SA =	Yes
MODLUA_VERSION =5.3
NO_TEST =	Yes

LIB_DEPENDS =	devel/libconfig \
		net/mosquitto

CFLAGS +=	-I${LOCALBASE}/include -I${MODLUA_INCL_DIR}
LDFLAGS =	-L${LOCALBASE}/lib ${MODLUA_LIB} -lmosquitto -lconfig

MAKE_FLAGS=	CFLAGS="${CFLAGS}"
MAKE_FLAGS+=	LDFLAGS="${LDFLAGS}"
MAKE_FLAGS+=	BINDIR=${TRUEPREFIX}/bin
MAKE_FLAGS+=	MANDIR=${TRUEPREFIX}/man

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/msoak
	${INSTALL_DATA} ${WRKSRC}/example.* \
		${PREFIX}/share/examples/msoak/

.include <bsd.port.mk>
