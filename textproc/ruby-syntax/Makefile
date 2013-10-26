# $OpenBSD: Makefile,v 1.6 2013/10/26 23:55:37 jeremy Exp $

COMMENT =	module for using syntax highlighting in ruby

DISTNAME =	syntax-1.0.0
CATEGORIES =	textproc

REVISION =	3

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/ruby test/ALL-TESTS.rb --verbose

.include <bsd.port.mk>
