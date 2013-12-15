# $OpenBSD: Makefile,v 1.28 2013/12/15 03:56:34 brad Exp $

COMMENT=	C++ wrapper for the Simple DirectMedia Layer

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME=	sdlmm-${VERSION}
REVISION=	12
CATEGORIES=	devel

SHARED_LIBS +=	SDLmm                9.0      # .8.0

HOMEPAGE=	http://sdlmm.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB +=	SDL m pthread sndio stdc++ usbhid

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlmm/}

MODULES=	converters/libiconv

LIB_DEPENDS=	devel/sdl

USE_GROFF=	Yes
SEPARATE_BUILD= Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

post-install:
	@cd ${WRKSRC}/docs/html && \
	    rm -f Makefile* htmlfiles && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmm && \
	    for A in *; do ${INSTALL_DATA} $$A ${PREFIX}/share/doc/sdlmm/; done

.include <bsd.port.mk>
