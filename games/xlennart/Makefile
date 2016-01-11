# $OpenBSD: Makefile,v 1.6 2016/01/11 11:04:21 czarkoff Exp $

COMMENT =		an XBill Modification
GH_ACCOUNT =		Xylemon
GH_PROJECT =		xlennart
GH_TAGNAME =		1.1.1
REVISION =		0
CATEGORIES =		games x11
HOMEPAGE =		https://github.com/Xylemon/xlennart

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.or>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xaw Xmu Xpm Xt c

RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --disable-motif --disable-gtk \
			--enable-athena --localstatedir=/var/games/xlennart

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xlennart
	${INSTALL_DATA} ${WRKSRC}/scores \
		${PREFIX}/share/examples/xlennart/xlennart.scores
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/xlennart.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
