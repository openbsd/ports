# $OpenBSD: Makefile,v 1.30 2013/03/11 11:07:42 espie Exp $

COMMENT=	X11 solitaire with 14 variations

DISTNAME=	xpat2-1.07
REVISION=	2
CATEGORIES=	games

MASTER_SITES=	http://www.ibiblio.org/pub/linux/games/solitaires/

EXTRACT_SUFX=	-src.tar.gz

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

USE_GROFF =	Yes

WRKSRC=		${WRKDIST}/src
CONFIGURE_STYLE=imake

NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/Xpat.tmpl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpat2
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xpat2/xpat.log

.include <bsd.port.mk>
