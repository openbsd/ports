# $OpenBSD: Makefile,v 1.12 2003/04/04 02:18:00 margarida Exp $

COMMENT=	"SDL cross-platform networking library"

DISTNAME=	SDL_net-1.2.5
PKGNAME=	${DISTNAME:L:S/_/-/}
CATEGORIES=	devel net
MASTER_SITES=	http://www.libsdl.org/projects/SDL_net/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--disable-gui \
			${CONFIGURE_SHARED}

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>
