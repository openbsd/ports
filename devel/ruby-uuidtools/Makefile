# $OpenBSD: Makefile,v 1.10 2011/01/06 04:24:23 jeremy Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-2.1.1
REVISION =	0
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
