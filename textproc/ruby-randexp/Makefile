# $OpenBSD: Makefile,v 1.13 2013/03/11 11:42:47 espie Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.6
REVISION =	0
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS =	devel/ruby-rcov,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rake rspec
MODRUBY_TEST_TARGET = specs

.include <bsd.port.mk>
