# $OpenBSD: Makefile,v 1.30 2013/03/11 11:07:42 espie Exp $

COMMENT=	win land without colliding with 'flyers' and 'eaters'

DISTNAME=	xonix-1.4
REVISION = 	7
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.interface-business.de/pub/outgoing/ \
		http://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c m

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xonix
		${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/xonix/xonix.scores

.include <bsd.port.mk>
