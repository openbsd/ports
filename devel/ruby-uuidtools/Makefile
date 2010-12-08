# $OpenBSD: Makefile,v 1.9 2010/12/08 22:41:46 jeremy Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-2.1.1
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_REGRESS=rake
RAKE_REGRESS_TARGET=test_all

.include <bsd.port.mk>
