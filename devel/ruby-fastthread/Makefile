# $OpenBSD: Makefile,v 1.7 2010/10/26 21:42:14 jeremy Exp $

COMMENT=	optimized replacement for Ruby thread.rb primitives

DISTNAME=	fastthread-1.0.7
PKGNAME=	ruby-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

REGRESS_DEPENDS=:${PKGNAME}:devel/ruby-fastthread

do-regress: fake
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_all.rb

.include <bsd.port.mk>
