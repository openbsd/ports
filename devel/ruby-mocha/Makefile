# $OpenBSD: Makefile,v 1.20 2015/07/19 02:10:31 jeremy Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.13.3
REVISION =	1
CATEGORIES =	devel

HOMEPAGE =	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-metaclass,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
