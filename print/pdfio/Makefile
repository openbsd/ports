COMMENT=		C library for reading and writing PDF files

V=			1.6.5
DISTNAME=		pdfio-${V}

SHARED_LIBS=		pdfio 0.0 # 1

CATEGORIES=		print graphics textproc

HOMEPAGE=		https://www.msweet.org/pdfio/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/michaelrsweet/pdfio/releases/download/v${V}/

WANTLIB += m png z

LIB_DEPENDS=		graphics/png

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-static \
			--enable-shared

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{Makefile.in,configure}

.include <bsd.port.mk>
