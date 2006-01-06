# $OpenBSD: Makefile,v 1.9 2006/01/06 09:07:58 steven Exp $

COMMENT=	"C++ wrapper for the Simple DirectMedia Layer"
COMMENT-docs=	"SDLmm documentation"

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME=	${DISTNAME:L}p0
PKGNAME-docs=	${PKGNAME:S,-,-docs-,}
SHARED_LIBS=	SDLmm 8.0
CATEGORIES=	devel

HOMEPAGE=	http://sdlmm.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlmm/}

MULTI_PACKAGES=	-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=	SDL::devel/sdl
.elif defined(PACKAGING)
PKG_ARCH=	*
.endif

USE_X11=	Yes
USE_LIBTOOL=	Yes

post-install:
	@(cd ${WRKSRC}/docs/html && \
	    rm -f Makefile* htmlfiles && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmm && \
	    for A in *; do ${INSTALL_DATA} $$A ${PREFIX}/share/doc/sdlmm/; done)

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
