COMMENT=	unicode string library

DISTNAME=	libgrapheme-2.0.0

SHARED_LIBS=	grapheme	1.0	# 2.0.0

CATEGORIES=	textproc devel
MASTER_SITES=	https://dl.suckless.org/libgrapheme/
HOMEPAGE=	https://libs.suckless.org/libgrapheme/

MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE=	Yes

SOFLAGS=	-shared -Wl,--soname=libgrapheme.so.$(LIBgrapheme_VERSION)
MAKE_FLAGS=	SOFLAGS="${SOFLAGS}"

FAKE_FLAGS=	LDCONFIG=: \
		MANPREFIX=${PREFIX}/man \
		VERSION=${LIBgrapheme_VERSION}

.include <bsd.port.mk>
