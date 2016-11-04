# $OpenBSD: Makefile,v 1.26 2016/11/04 21:26:37 jeremy Exp $

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.6.0
DISTNAME=	id3lib-ruby-${VERSION}
PKGNAME=	id3lib-${VERSION}
REVISION =	7
CATEGORIES=	audio

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
WANTLIB=	iconv id3>=4 stdc++ z
LIB_DEPENDS=	audio/id3lib \
		converters/libiconv

CONFIGURE_STYLE=	ruby gem ext

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=	rake 

.include <bsd.port.mk>
