# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:30 espie Exp $

COMMENT =	Ruby parser written in pure Ruby

DISTNAME =	ruby_parser-2.0.4
REVISION =	5
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-sexp_processor,${MODRUBY_FLAVOR}>=3.0.1

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR} \
		  devel/ruby-minitest,${MODRUBY_FLAVOR}

MODRUBY_TEST = rake

.include <bsd.port.mk>
