# $OpenBSD: Makefile,v 1.19 2014/01/15 12:33:45 jasper Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.13.3
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS} \
		devel/ruby-metaclass,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
