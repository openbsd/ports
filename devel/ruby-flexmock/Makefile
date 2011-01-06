# $OpenBSD: Makefile,v 1.13 2011/01/06 04:24:23 jeremy Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.6
REVISION =	3
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_REGRESS=	rake
RAKE_REGRESS_TARGET=	test_all

.include <bsd.port.mk>
