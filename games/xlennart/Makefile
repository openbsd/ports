# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:27 sthen Exp $

COMMENT =		an XBill Modification
GH_ACCOUNT =		Xylemon
GH_PROJECT =		xlennart
GH_TAGNAME =		1.1.1
REVISION =		3
CATEGORIES =		games x11
HOMEPAGE =		https://github.com/Xylemon/xlennart

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xaw Xmu Xpm Xt c

RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-motif --disable-gtk \
			--enable-athena --localstatedir=/var/games/xlennart

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xlennart
	${INSTALL_DATA} ${WRKSRC}/scores \
		${PREFIX}/share/examples/xlennart/xlennart.scores
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/xlennart.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
