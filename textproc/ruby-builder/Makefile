# $OpenBSD: Makefile,v 1.13 2011/11/17 16:08:00 jeremy Exp $

COMMENT=	Ruby library to create XML markup and data structures

DISTNAME=	builder-2.1.2
REVISION =	5
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_REGRESS=	rake
MODRUBY_REGRESS_TARGET=	test_all

.include <bsd.port.mk>
