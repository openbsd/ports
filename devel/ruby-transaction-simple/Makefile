# $OpenBSD: Makefile,v 1.7 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	generic active transaction support for ruby objects

DISTNAME=	transaction-simple-1.4.0
PKGNAME=	ruby-${DISTNAME}
REVISION=	2
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

GEM_SKIPDEPENDS=hoe

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
