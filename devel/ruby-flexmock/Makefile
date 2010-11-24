# $OpenBSD: Makefile,v 1.12 2010/11/24 21:35:14 jeremy Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.6
REVISION =	2
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
