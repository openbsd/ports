COMMENT=	unicode string library

DISTNAME=	libgrapheme-1

SHARED_LIBS=	grapheme	0.0

CATEGORIES=	textproc devel
MASTER_SITES=	https://dl.suckless.org/libgrapheme/
HOMEPAGE=	https://libs.suckless.org/libgrapheme/

MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE=	Yes

FAKE_FLAGS=	MANPREFIX=${PREFIX}/man

post-install:
	mv ${PREFIX}/lib/libgrapheme.so \
	   ${PREFIX}/lib/libgrapheme.so.${LIBgrapheme_VERSION}

.include <bsd.port.mk>
