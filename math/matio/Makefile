USE_NOBTCFI-aarch64 =	Yes# fortran

COMMENT=	library for reading and writing Matlab MAT files

DISTNAME=	matio-1.5.23
SHARED_LIBS=	matio	3.2      # 11.4
CATEGORIES=	math
REVISION=	1

HOMEPAGE=	https://sourceforge.net/projects/matio/

# BSD
PERMIT_PACKAGE=	Yes

SITES=			${SITE_SOURCEFORGE:=matio/}

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB =		c hdf5 m z

LIB_DEPENDS=		math/hdf5

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-mat73 \
			--with-hdf5=${LOCALBASE}

.include <bsd.port.mk>
