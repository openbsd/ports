# $OpenBSD: Makefile,v 1.13 2012/09/23 16:57:34 jeremy Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-2.1.1
REVISION =	2
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_REGRESS=rake rspec
MODRUBY_REGRESS_TARGET=spec:normal

.include <bsd.port.mk>
