# $OpenBSD: Makefile,v 1.11 2002/12/08 20:23:55 pvalchev Exp $

COMMENT=	"SDL cross-platform networking library"

VER=		1.2.4
PROJ=		SDL_net
DISTNAME=	${PROJ}-${VER}
PKGNAME=	sdl-net-${VER}
CATEGORIES=	devel net
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/release/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.::devel/sdl \
		GUI.::devel/guilib

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>
