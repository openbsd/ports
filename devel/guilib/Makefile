# $OpenBSD: Makefile,v 1.1.1.1 2001/05/07 04:04:36 obecian Exp $

COMMENT=	"SDL C++ GUI widget library"

VER=	1.1.0
PROJ=	GUIlib
DISTNAME=	${PROJ}-${VER}
PKGNAME=	guilib-${VER}
CATEGORIES=	devel graphics
NEED_VERSION=	1.364
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/src/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.:sdl-*-!no_x11:devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
