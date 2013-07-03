# $OpenBSD: Makefile,v 1.17 2013/07/03 06:54:27 jasper Exp $

COMMENT =	extracts the parse tree for an entire class or a method

DISTNAME =	ParseTree-3.0.9
PKGNAME =	${DISTNAME:L}
CATEGORIES =	devel

HOMEPAGE =	http://www.zenspider.com/ZSS/Products/ParseTree/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

FLAVORS =		ruby18
FLAVOR =		ruby18

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-rubyinline,${MODRUBY_FLAVOR}>=3.9.0,<3.10.0 \
			devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.2.0,<3.3.0 \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

TEST_DEPENDS =	devel/ruby-ruby2ruby,${MODRUBY_FLAVOR} \
			devel/ruby-minitest,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rake

.include <bsd.port.mk>
