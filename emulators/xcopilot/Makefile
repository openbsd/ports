# $OpenBSD: Makefile,v 1.19 2010/10/24 21:17:49 ajacoutot Exp $

COMMENT=	emulator for US Robotics Pilot PDA

DISTNAME=	xcopilot-0.6.6
REVISION=	0
CATEGORIES=	emulators palm

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xext Xpm Xt c pthread-stubs xcb

MASTER_SITES=	http://xcopilot.cuspy.com/build/

USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
