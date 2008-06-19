# $OpenBSD: Makefile,v 1.4 2008/06/19 09:09:42 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby interface to the id3lib C++ library

VERSION=	0.5.0
PKGNAME=	ruby-id3lib-${VERSION}p1
DISTNAME=	id3lib-ruby-${VERSION}
CATEGORIES=	audio

MAINTAINER=	Paul Irofti <bulibuta@sdf.lonestar.org>

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=id3lib-ruby/}

MODULES=	lang/ruby
WANTLIB=	c m stdc++ z
LIB_DEPENDS=	ruby.>=1::lang/ruby \
		id3.>=4::audio/id3lib

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	::devel/ruby-rake \
			:${PKGNAME}:${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
