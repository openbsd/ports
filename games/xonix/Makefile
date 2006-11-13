# $OpenBSD: Makefile,v 1.19 2006/11/13 10:08:13 steven Exp $

COMMENT=	"win land without colliding with 'flyers' and 'eaters'"

DISTNAME=	xonix-1.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.interface-business.de/pub/outgoing/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c m

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
