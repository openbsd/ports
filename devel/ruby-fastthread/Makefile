# $OpenBSD: Makefile,v 1.12 2011/11/09 00:17:38 jeremy Exp $

COMMENT=	optimized replacement for Ruby thread.rb primitives

DISTNAME=	fastthread-1.0.7
REVISION=	4
CATEGORIES=	devel

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

REGRESS_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress: fake
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_all.rb

.include <bsd.port.mk>
