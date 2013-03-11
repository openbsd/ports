# $OpenBSD: Makefile,v 1.18 2013/03/11 11:44:49 espie Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-1.2.1
REVISION=	1
CATEGORIES =	www

HOMEPAGE =	http://www.sinatrarb.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-tilt,${MODRUBY_FLAVOR}>=1.2.2,<2.0 \
			www/ruby-rack,${MODRUBY_FLAVOR}>=1.1,<2.0

MODRUBY_TEST =	rake

TEST_DEPENDS =	textproc/ruby-haml,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			www/ruby-rack-test,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
