# $OpenBSD: Makefile,v 1.16 2015/12/07 08:03:59 jasper Exp $

COMMENT =	Ruby-based DSL for text parsing and interpretation

DISTNAME =	treetop-1.6.3
CATEGORIES =	textproc

HOMEPAGE =	http://treetop.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-polyglot,${MODRUBY_FLAVOR}>=0.3.1

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rspec3
TEST_DEPENDS =		devel/ruby-rr,${MODRUBY_FLAVOR}

SUBST_VARS +=		RUBY

pre-configure:
	${SUBST_CMD} ${WRKSRC}/spec/compiler/tt_compiler_spec.rb

.include <bsd.port.mk>
