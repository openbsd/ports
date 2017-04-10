# $OpenBSD: Makefile,v 1.27 2017/04/10 11:45:23 sthen Exp $

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.6.0
DISTNAME=	id3lib-ruby-${VERSION}
PKGNAME=	id3lib-${VERSION}
REVISION =	7
CATEGORIES=	audio

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
WANTLIB=	iconv id3>=4 ${LIBCXX} z
LIB_DEPENDS=	audio/id3lib \
		converters/libiconv

CONFIGURE_STYLE=	ruby gem ext

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=	rake 

.include <bsd.port.mk>
