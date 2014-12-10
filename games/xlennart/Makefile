# $OpenBSD: Makefile,v 1.2 2014/12/10 17:53:29 landry Exp $

COMMENT =		an XBill Modification
GH_ACCOUNT =		Xylemon
GH_PROJECT =		xlennart
GH_TAGNAME =		1.1
DISTNAME =		xlennart-${GH_TAGNAME}
CATEGORIES =		games x11
HOMEPAGE =		https://github.com/Xylemon/xlennart

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xaw Xmu Xpm Xt c

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} --disable-motif --disable-gtk \
			--enable-athena --localstatedir=/var/games/xlennart

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xlennart
	${INSTALL_DATA} ${WRKSRC}/scores \
		${PREFIX}/share/examples/xlennart/xlennart.scores

.include <bsd.port.mk>
