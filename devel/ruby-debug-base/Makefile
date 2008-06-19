# $OpenBSD: Makefile,v 1.3 2008/06/19 09:09:42 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	faster implementation of the standard debug.rb - base

DISTNAME=	ruby-debug-base-0.10.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Paul Irofti <bulibuta@sdf.lonestar.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=ruby-debug/}

LIB_DEPENDS=	ruby.>=1::lang/ruby
WANTLIB+=	c m
MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

REGRESS_DEPENDS=::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
