# $OpenBSD: Makefile,v 1.4 2001/12/28 22:21:29 pvalchev Exp $

COMMENT=	"SDL C++ GUI widget library"

VER=		1.1.0
PROJ=		GUIlib
DISTNAME=	${PROJ}-${VER}
PKGNAME=	guilib-${VER}
CATEGORIES=	devel graphics
NEED_VERSION=	1.364
MASTER_SITES=	http://www.libsdl.org/projects/${PROJ}/src/

HOMEPAGE=	http://www.libsdl.org/

MAINTAINER=	Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.::devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
