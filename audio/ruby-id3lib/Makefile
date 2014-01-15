# $OpenBSD: Makefile,v 1.24 2014/01/15 02:13:57 jeremy Exp $

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.6.0
DISTNAME=	id3lib-ruby-${VERSION}
PKGNAME=	id3lib-${VERSION}
REVISION =	6
CATEGORIES=	audio

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby converters/libiconv
WANTLIB=	id3>=4 stdc++ z
LIB_DEPENDS=	audio/id3lib

CONFIGURE_STYLE=	ruby gem ext

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=	rake 

.include <bsd.port.mk>
