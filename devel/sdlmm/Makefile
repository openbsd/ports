# $OpenBSD: Makefile,v 1.32 2017/06/14 18:34:10 schwarze Exp $

COMMENT=	C++ wrapper for the Simple DirectMedia Layer

VERSION=	0.1.8
DISTNAME=	SDLmm-${VERSION}
PKGNAME=	sdlmm-${VERSION}
REVISION=	13
CATEGORIES=	devel

SHARED_LIBS +=	SDLmm                9.0      # .8.0

HOMEPAGE=	http://sdlmm.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB +=	SDL iconv m pthread sndio ${LIBCXX} usbhid

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlmm/}

LIB_DEPENDS=	converters/libiconv \
		devel/sdl

SEPARATE_BUILD= Yes
CONFIGURE_STYLE= gnu

post-install:
	@cd ${WRKSRC}/docs/html && \
	    rm -f Makefile* htmlfiles && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlmm && \
	    for A in *; do ${INSTALL_DATA} $$A ${PREFIX}/share/doc/sdlmm/; done

.include <bsd.port.mk>
