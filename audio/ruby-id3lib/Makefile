# $OpenBSD: Makefile,v 1.6 2009/08/10 15:21:59 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.5.0
PKGNAME=	ruby-id3lib-${VERSION}p2
DISTNAME=	id3lib-ruby-${VERSION}
CATEGORIES=	audio

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=id3lib-ruby/}

MODULES=	lang/ruby
WANTLIB=	c m stdc++ z
LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS} \
		id3.>=4::audio/id3lib

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	::devel/ruby-rake \
			:${PKGNAME}:${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
