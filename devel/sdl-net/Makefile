# $OpenBSD: Makefile,v 1.4 2001/10/05 19:29:37 obecian Exp $

COMMENT=	"SDL cross-platform networking library"

VER=		1.2.2
PROJ=		SDL_net
DISTNAME=	${PROJ}-${VER}
PKGNAME=	sdl-net-${VER}
CATEGORIES=	devel net
NEED_VERSION=	1.364
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/release/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.:sdl-*-!no_x11:devel/sdl \
		GUI.::devel/guilib

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>
