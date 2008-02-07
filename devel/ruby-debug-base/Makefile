# $OpenBSD: Makefile,v 1.1.1.1 2008/02/07 19:48:55 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	faster implementation of the standard debug.rb - base

DISTNAME=	ruby-debug-base-0.10.0
CATEGORIES=	devel

MAINTAINER=	Paul Irofti <bulibuta@gmail.com>

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
