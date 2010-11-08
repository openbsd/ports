# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:54 jeremy Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-1.0.3
REVISION=	2
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
