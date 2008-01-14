# $OpenBSD: Makefile,v 1.4 2008/01/14 19:20:12 bernd Exp $

COMMENT=	generic active transaction support for ruby objects

DISTNAME=	transaction-simple-1.4.0
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=trans-simple/}

MODULES=	lang/ruby

GEM_SKIPDEPENDS=hoe

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
