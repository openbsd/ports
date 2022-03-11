COMMENT =		firmware creation helper for esp8266 chips
V =			0.4.13

GH_ACCOUNT =		igrr
GH_PROJECT =		esptool-ck
GH_TAGNAME =		${V}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/basepr1me/esptool-ck

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c

MAKE_FLAGS =		VERSION=${V}
USE_GMAKE =		Yes

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/esptool ${PREFIX}/bin

.include <bsd.port.mk>
