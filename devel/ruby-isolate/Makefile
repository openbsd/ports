# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:29 espie Exp $

COMMENT =	very simple RubyGems sandbox

DISTNAME =	isolate-3.2.1
REVISION =	1
CATEGORIES =	devel

HOMEPAGE=	http://github.com/jbarnette/isolate

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
