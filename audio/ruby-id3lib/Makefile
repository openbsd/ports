# $OpenBSD: Makefile,v 1.7 2010/09/06 00:04:28 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.5.0
DISTNAME=	id3lib-ruby-${VERSION}
PKGNAME=	ruby-id3lib-${VERSION}
REVISION=	2
CATEGORIES=	audio

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=id3lib-ruby/}

MODULES=	lang/ruby
WANTLIB=	c id3.>=4 m stdc++ z
LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS} \
		::audio/id3lib

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	::devel/ruby-rake \
			:${PKGNAME}:${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
