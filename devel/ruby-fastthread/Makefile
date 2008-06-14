# $OpenBSD: Makefile,v 1.2 2008/06/14 23:46:38 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	optimized replacement for Ruby thread.rb primitives

DISTNAME=	fastthread-1.0.1
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	devel

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=mongrel/}

MODULES=	lang/ruby

WANTLIB=	c m

LIB_DEPENDS=	ruby::lang/ruby

CONFIGURE_STYLE=ruby gem

REGRESS_DEPENDS=:${PKGNAME}:devel/ruby-fastthread

do-regress: fake
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_all.rb

.include <bsd.port.mk>
