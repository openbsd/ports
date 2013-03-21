# $OpenBSD: Makefile,v 1.27 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=	C++ wrapper for the Simple DirectMedia Layer

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME=	sdlmm-${VERSION}

REVISION=	11

SHARED_LIBS +=	SDLmm                9.0      # .8.0

CATEGORIES=	devel

HOMEPAGE=	http://sdlmm.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL m sndio stdc++ usbhid

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlmm/}

MODULES=	converters/libiconv

LIB_DEPENDS=	devel/sdl

SEPARATE_BUILD= Yes

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

post-install:
	@cd ${WRKSRC}/docs/html && \
	    rm -f Makefile* htmlfiles && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmm && \
	    for A in *; do ${INSTALL_DATA} $$A ${PREFIX}/share/doc/sdlmm/; done

.include <bsd.port.mk>
