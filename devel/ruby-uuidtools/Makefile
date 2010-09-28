# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-1.0.3
PKGNAME=	ruby-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

MODRUBY_REGRESS=rake
RAKE_REGRESS_TARGET=test_all

.include <bsd.port.mk>
