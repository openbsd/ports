# $OpenBSD: Makefile,v 1.5 2002/05/13 18:50:42 espie Exp $

COMMENT=	"C++ wrapper for the Simple DirectMedia Layer"

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel
NEED_VERSION=	1.448

HOMEPAGE=	http://sdlmm.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlmm/}

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	LIBS="${LIBS} -lstdc++"

.include <bsd.port.mk>
