# $OpenBSD: Makefile,v 1.15 2014/10/11 19:54:46 jeremy Exp $

COMMENT =	Ruby parser written in pure Ruby

DISTNAME =	ruby_parser-2.3.1
REVISION =	1
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
