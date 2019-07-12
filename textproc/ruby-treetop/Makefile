# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:28 sthen Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.6.5
REVISION =	0
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/cjheath/treetop

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-polyglot,${MODRUBY_FLAVOR}>=0.3.1

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rspec3
TEST_DEPENDS =		devel/ruby-rr,${MODRUBY_FLAVOR}

SUBST_VARS +=		RUBY

pre-configure:
	sed -i 's,\(system("ruby\),\1${MODRUBY_BINREV},g' ${WRKSRC}/spec/compiler/tt_compiler_spec.rb

.include <bsd.port.mk>
