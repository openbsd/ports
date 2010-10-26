# $OpenBSD: Makefile,v 1.10 2010/10/26 21:42:13 jeremy Exp $

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.5.0
DISTNAME=	id3lib-ruby-${VERSION}
PKGNAME=	ruby-id3lib-${VERSION}
REVISION=	3
CATEGORIES=	audio

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby
WANTLIB=	id3.>=4 stdc++ z
LIB_DEPENDS=	::audio/id3lib

CONFIGURE_STYLE=	ruby gem ext

REGRESS_DEPENDS=	:${PKGNAME}:${BASE_PKGPATH}
MODRUBY_REGRESS=	rake 

.include <bsd.port.mk>
