# $OpenBSD: Makefile,v 1.22 2019/07/12 21:07:45 sthen Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.13.3
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =	http://gofreerange.com/mocha/docs/

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-metaclass,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
