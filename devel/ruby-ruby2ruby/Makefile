# $OpenBSD: Makefile,v 1.17 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	generating pure Ruby code easily from ParseTree\'s Sexps

DISTNAME =	ruby2ruby-1.3.1
REVISION =	0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ruby_parser,${MODRUBY_FLAVOR}>=2.0,<3.0 \
			devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0,<4.0

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS  =	devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.3.3

MODRUBY_TEST  =	rake

.include <bsd.port.mk>
