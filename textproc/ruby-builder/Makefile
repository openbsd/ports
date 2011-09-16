# $OpenBSD: Makefile,v 1.12 2011/09/16 11:41:41 espie Exp $

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
RAKE_REGRESS_TARGET=	test_all

.include <bsd.port.mk>
