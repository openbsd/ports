# $OpenBSD: Makefile,v 1.25 2009/08/26 00:15:26 sthen Exp $

COMMENT=	win land without colliding with 'flyers' and 'eaters'

DISTNAME=	xonix-1.4
PKGNAME=	${DISTNAME}p6
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.interface-business.de/pub/outgoing/ \
		http://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c m

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xonix
		${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xonix/xonix.scores

.include <bsd.port.mk>
