COMMENT=	unicode string library

DISTNAME=	libgrapheme-2.0.2

SHARED_LIBS=	grapheme	1.0	# 2.0.0

CATEGORIES=	textproc devel
SITES=		https://dl.suckless.org/libgrapheme/
HOMEPAGE=	https://libs.suckless.org/libgrapheme/

MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

SONAME=		libgrapheme.so.$(LIBgrapheme_VERSION)
SOFLAGS=	-shared -Wl,--soname=${SONAME}

MAKE_FLAGS=	SOFLAGS="${SOFLAGS}" \
		SONAME="${SONAME}"

FAKE_FLAGS=	LDCONFIG= \
		MANPREFIX=${PREFIX}/man \
		SOSYMLINK=false

.include <bsd.port.mk>
