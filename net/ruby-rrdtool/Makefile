# $OpenBSD: Makefile,v 1.1.1.2 2007/09/20 05:22:05 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	ruby binding for rrdtool

V=		0.6.0
DISTNAME=	RubyRRDtool-${V}
PKGNAME=	ruby-rrdtool-${V}
CATEGORIES=	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+=	c m z

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rubyrrdtool/}

MODULES=	lang/ruby

CONFIGURE_STYLE= ruby gem

LIB_DEPENDS=	art_lgpl_2::graphics/libart \
		png::graphics/png \
		ruby::lang/ruby
		
BUILD_DEPENDS=	::devel/ruby-hoe

.include <bsd.port.mk>
