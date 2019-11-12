# $OpenBSD: Makefile,v 1.6 2019/11/12 06:48:39 jeremy Exp $

COMMENT =	implementation of the WebSocket protocol for ruby

DISTNAME =	websocket-driver-0.7.1
CATEGORIES =	www

HOMEPAGE =	https://github.com/faye/websocket-driver-ruby

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-websocket-extensions,${MODRUBY_FLAVOR}>=0.1.0

.include <bsd.port.mk>
