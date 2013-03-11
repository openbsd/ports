# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:49 espie Exp $

COMMENT =	ruby DSL around a subset of XPath 1.0

DISTNAME =	xpath-0.1.4
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/xpath

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.3,<2.0

TEST_DEPENDS =	devel/ruby-bundler,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rspec
MODRUBY_TEST_DIR =	${WRKDIST}/spec
MODRUBY_TEST_TARGET = *_spec.rb

.include <bsd.port.mk>
