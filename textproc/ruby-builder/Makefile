# $OpenBSD: Makefile,v 1.14 2011/12/13 17:55:12 jeremy Exp $

COMMENT=	Ruby library to create XML markup and data structures

DISTNAME=	builder-3.0.0
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_REGRESS=	rake
MODRUBY_REGRESS_TARGET=	-I lib test_all

pre-regress:
	rm ${WRKSRC}/test/test_cssbuilder.rb

.include <bsd.port.mk>
