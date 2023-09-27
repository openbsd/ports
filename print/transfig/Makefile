COMMENT=	tools to convert Xfig's .fig files  #'

VERSION=	3.2.8b
DISTNAME=	fig2dev-${VERSION}
EXTRACT_SUFX =	.tar.xz
PKGNAME=	transfig-${VERSION}
CATEGORIES=	print
SITES=		${SITE_SOURCEFORGE:=mcj/}
HOMEPAGE=	https://xfig.org/

BUILD_DEPENDS=	print/ghostscript/gnu
LIB_DEPENDS=	graphics/png converters/libiconv
RUN_DEPENDS=	print/ghostscript/gnu \
		graphics/netpbm>=9.19

# MIT-like
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	Xpm c m png>=2 iconv

MAKE_FLAGS=	CC="${CC}"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS = --enable-transfig
CONFIGURE_ENV = LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include

FLAVORS=	a4
FLAVOR?=

.if !${FLAVOR:Ma4}
CONFIGURE_ARGS += --enable-letterpaper
.endif

.include <bsd.port.mk>
