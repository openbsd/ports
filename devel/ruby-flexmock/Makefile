# $OpenBSD: Makefile,v 1.10 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.6
PKGNAME=	ruby-${DISTNAME}
REVISION =      0
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

MODRUBY_REGRESS=	rake
RAKE_REGRESS_TARGET=	test_all

.include <bsd.port.mk>
