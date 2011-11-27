# $OpenBSD: Makefile,v 1.18 2011/11/27 11:11:48 pirofti Exp $

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.6.0
DISTNAME=	id3lib-ruby-${VERSION}
PKGNAME=	id3lib-${VERSION}
REVISION =	1
CATEGORIES=	audio

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby converters/libiconv
WANTLIB=	id3>=4 stdc++ z
LIB_DEPENDS=	audio/id3lib

CONFIGURE_STYLE=	ruby gem ext

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS=	rake 

.include <bsd.port.mk>
