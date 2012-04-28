# $OpenBSD: Makefile,v 1.9 2012/04/28 10:51:44 ajacoutot Exp $

BROKEN-sparc64=	SIGBUS on sparc64 when starting

COMMENT=	graphical roguelike game

DISTNAME=	ivan-0.50
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://ivan.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ivan/}

WANTLIB=	X11 Xext c m pthread pthread-stubs stdc++ usbhid xcb SDL>=6

LIB_DEPENDS=	devel/sdl

VMEM_WARNING=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/games

post-install:
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/ivan/ivan-highscore.scores

.include <bsd.port.mk>
