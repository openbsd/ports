# $OpenBSD: Makefile,v 1.28 2010/10/23 18:24:14 naddy Exp $

COMMENT=	X11 solitaire with 14 variations

DISTNAME=	xpat2-1.07
REVISION=	2
CATEGORIES=	games

MASTER_SITES=	http://www.ibiblio.org/pub/linux/games/solitaires/

EXTRACT_SUFX=	-src.tar.gz

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

USE_X11=	Yes
USE_GROFF =	Yes

WRKSRC=		${WRKDIST}/src
CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/Xpat.tmpl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpat2
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xpat2/xpat.log

.include <bsd.port.mk>
