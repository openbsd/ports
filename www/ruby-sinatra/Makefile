# $OpenBSD: Makefile,v 1.21 2015/06/19 14:03:25 jasper Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-1.4.6
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

MODRUBY_TEST =		rake

TEST_DEPENDS =		${MODRUBY_ICONV_DEPENDS} \
			converters/ruby-json,${MODRUBY_FLAVOR} \
			textproc/ruby-haml,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			www/ruby-rack-test,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
