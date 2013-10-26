# $OpenBSD: Makefile,v 1.9 2013/10/26 23:55:35 jeremy Exp $

COMMENT =	very simple RubyGems sandbox

DISTNAME =	isolate-3.2.1
REVISION =	3
CATEGORIES =	devel

HOMEPAGE=	https://github.com/jbarnette/isolate

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

TEST_DEPENDS = devel/ruby-minitest,${MODRUBY_FLAVOR} \
	 	  devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.12.3
MODRUBY_TEST = testrb
MODRUBY_TEST_ENV = RUBYOPT=-rubygems
MODRUBY_TEST_TARGET = -I . -I ../lib test_*.rb
MODRUBY_TEST_DIR = ${WRKSRC}/test

.include <bsd.port.mk>
