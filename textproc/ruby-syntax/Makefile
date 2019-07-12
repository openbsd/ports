# $OpenBSD: Makefile,v 1.7 2019/07/12 20:50:15 sthen Exp $

COMMENT =	module for using syntax highlighting in ruby

DISTNAME =	syntax-1.0.0
CATEGORIES =	textproc

REVISION =	3

# MIT License
PERMIT_PACKAGE=	Yes

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/ruby test/ALL-TESTS.rb --verbose

.include <bsd.port.mk>
