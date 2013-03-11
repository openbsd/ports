# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:47 espie Exp $

COMMENT =	module for using syntax highlighting in ruby

DISTNAME =	syntax-1.0.0
CATEGORIES =	textproc

REVISION =	2

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/ruby test/ALL-TESTS.rb --verbose

.include <bsd.port.mk>
