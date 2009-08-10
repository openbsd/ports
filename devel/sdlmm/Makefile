# $OpenBSD: Makefile,v 1.18 2009/08/10 06:31:08 kili Exp $

COMMENT-main=	C++ wrapper for the Simple DirectMedia Layer
COMMENT-docs=	SDLmm documentation

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME-main=	sdlmm-${VERSION}p8
PKGNAME-docs=	sdlmm-doc-${VERSION}p3
SHARED_LIBS +=	SDLmm                9.0      # .8.0
CATEGORIES=	devel

HOMEPAGE=	http://sdlmm.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlmm/}

MULTI_PACKAGES=	-main -docs

LIB_DEPENDS-main=	SDL::devel/sdl
WANTLIB-main=	X11 Xau Xdmcp Xext Xrandr Xrender iconv m pthread-stubs sndio \
		stdc++ usbhid xcb
PKG_ARCH-docs=	*

USE_X11=	Yes
USE_LIBTOOL=	Yes

post-install:
	@cd ${WRKSRC}/docs/html && \
	    rm -f Makefile* htmlfiles && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmm && \
	    for A in *; do ${INSTALL_DATA} $$A ${PREFIX}/share/doc/sdlmm/; done

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
