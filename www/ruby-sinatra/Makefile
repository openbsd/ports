# $OpenBSD: Makefile,v 1.22 2015/07/18 04:55:52 jeremy Exp $

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

.include <bsd.port.mk>
