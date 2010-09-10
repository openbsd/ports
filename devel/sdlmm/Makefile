# $OpenBSD: Makefile,v 1.21 2010/09/10 22:57:52 naddy Exp $

COMMENT-main=	C++ wrapper for the Simple DirectMedia Layer
COMMENT-docs=	SDLmm documentation

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME-main=	sdlmm-${VERSION}
REVISION-main=	10
PKGNAME-docs=	sdlmm-doc-${VERSION}
REVISION-docs=	4
SHARED_LIBS +=	SDLmm                9.0      # .8.0
CATEGORIES=	devel

HOMEPAGE=	http://sdlmm.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlmm/}

MULTI_PACKAGES=	-main -docs

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			::devel/sdl
WANTLIB-main=	SDL iconv m sndio stdc++ usbhid
PKG_ARCH-docs=	*

SEPARATE_BUILD= concurrent
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

post-install:
	@cd ${WRKSRC}/docs/html && \
	    rm -f Makefile* htmlfiles && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmm && \
	    for A in *; do ${INSTALL_DATA} $$A ${PREFIX}/share/doc/sdlmm/; done

.include <bsd.port.mk>
