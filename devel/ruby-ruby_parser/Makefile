# $OpenBSD: Makefile,v 1.13 2013/07/03 06:55:08 jasper Exp $

COMMENT =	Ruby parser written in pure Ruby

DISTNAME =	ruby_parser-2.3.1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0,<4.0

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR} \
		devel/ruby-minitest,${MODRUBY_FLAVOR}

MODRUBY_TEST = rake

.include <bsd.port.mk>
