# $OpenBSD: Makefile,v 1.1.1.1 2015/06/05 02:49:42 jeremy Exp $

COMMENT =	implementation of the WebSocket protocol for ruby

DISTNAME =	websocket-driver-0.5.4
CATEGORIES =	www

HOMEPAGE =	https://github.com/faye/websocket-driver-ruby

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-websocket-extensions,${MODRUBY_FLAVOR}>=0.1.0

.include <bsd.port.mk>
