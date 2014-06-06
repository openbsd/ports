# $OpenBSD: Makefile,v 1.20 2014/06/06 17:32:41 jeremy Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-1.4.5
CATEGORIES =	www

HOMEPAGE =	http://www.sinatrarb.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-tilt,${MODRUBY_FLAVOR}>=1.3.4,<2.0 \
			www/ruby-rack,${MODRUBY_FLAVOR}>=1.4,<2.0 \
			www/ruby-rack-protection,${MODRUBY_FLAVOR}>=1.4,<2.0

MODRUBY_TEST =		testrb
MODRUBY_TEST_TARGET =	test/*_test.rb
MODRUBY_TEST_ENV =	RUBYOPT=-rubygems

TEST_DEPENDS =		${MODRUBY_ICONV_DEPENDS} \
			converters/ruby-json,${MODRUBY_FLAVOR} \
			textproc/ruby-haml,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			www/ruby-rack-test,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
