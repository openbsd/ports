# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:05 sthen Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-2.0.0
CATEGORIES =	www

HOMEPAGE =	http://www.sinatrarb.com/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-tilt,${MODRUBY_FLAVOR}>=2.0,<3.0 \
			www/ruby-mustermann,${MODRUBY_FLAVOR}>=1.0,<2.0 \
			www/ruby-rack,${MODRUBY_FLAVOR}>=2.0,<3.0 \
			www/ruby-rack-protection,${MODRUBY_FLAVOR}=2.0.0

.include <bsd.port.mk>
