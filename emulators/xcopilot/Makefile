# $OpenBSD: Makefile,v 1.14 2004/11/27 10:39:14 espie Exp $

COMMENT=	"emulator for US Robotics Pilot PDA"

DISTNAME=       xcopilot-0.6.6
CATEGORIES=     emulators palm

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xpm Xt c

MASTER_SITES=   http://xcopilot.cuspy.com/build/

USE_X11=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
