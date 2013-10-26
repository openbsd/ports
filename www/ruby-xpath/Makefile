# $OpenBSD: Makefile,v 1.3 2013/10/26 23:55:38 jeremy Exp $

COMMENT =	ruby DSL around a subset of XPath 1.0

DISTNAME =	xpath-0.1.4
REVISION =	0
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
