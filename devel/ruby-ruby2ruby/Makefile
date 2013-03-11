# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:30 espie Exp $

COMMENT =	generating pure Ruby code easily from ParseTree\'s Sexps

DISTNAME =	ruby2ruby-1.2.4
REVISION =	5
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ruby_parser,${MODRUBY_FLAVOR}>=2.0 \
			devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS  =	devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.3.3

MODRUBY_TEST  =	rake

.include <bsd.port.mk>
