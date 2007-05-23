# $OpenBSD: Makefile,v 1.2 2007/05/23 06:28:03 ajacoutot Exp $

.if ${MACHINE_ARCH} == "sparc64"
BROKEN=	"SIGBUS on sparc64 when starting"
.endif

COMMENT=	"graphical roguelike game"

DISTNAME=	ivan-0.50
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

HOMEPAGE=	http://ivan.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ivan/}

WANTLIB=	X11 Xext c m pthread stdc++ usbhid

LIB_DEPENDS=	SDL.>=6::devel/sdl

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--localstatedir=/var/games

post-install:
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/ivan/ivan-highscore.scores

.include <bsd.port.mk>
