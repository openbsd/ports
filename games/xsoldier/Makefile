# $OpenBSD: Makefile,v 1.32 2019/07/12 20:46:28 sthen Exp $

COMMENT =	space-based shoot'em up game for X11

DISTNAME =	xsoldier-1.8
CATEGORIES =	games x11

HOMEPAGE =	http://www.interq.or.jp/libra/oohara/xsoldier/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		ICE SM X11 Xpm c

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CC_OPTIMIZE="${CFLAGS}"

NO_TEST =		Yes

# template for pkg install
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xsoldier
	${INSTALL_DATA} ${WRKSRC}/scorefile.txt \
		 ${PREFIX}/share/examples/xsoldier/xsoldier.scores

.include <bsd.port.mk>
