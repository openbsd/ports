# $OpenBSD: Makefile,v 1.7 2004/01/02 18:06:32 espie Exp $

COMMENT=	"C++ wrapper for the Simple DirectMedia Layer"

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel

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
.include <bsd.own.mk>
USE_GCC3?= No

.if ${USE_GCC3:L} == "yes"
CONFIGURE_ENV=	LIBS="${LIBS} -lstdc++ -lm"
.else
CONFIGURE_ENV=	LIBS="${LIBS} -lstdc++"
.endif

.include <bsd.port.mk>
