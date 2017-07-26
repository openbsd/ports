# $OpenBSD: Makefile,v 1.29 2017/07/26 22:45:15 sthen Exp $

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.6.0
DISTNAME=	id3lib-ruby-${VERSION}
PKGNAME=	id3lib-${VERSION}
REVISION =	8
CATEGORIES=	audio

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
WANTLIB=	iconv id3>=4 ${COMPILER_LIBCXX} z
LIB_DEPENDS=	audio/id3lib \
		converters/libiconv

CONFIGURE_STYLE=	ruby gem ext

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=	rake 

.include <bsd.port.mk>
