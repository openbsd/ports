# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:05 sthen Exp $

COMMENT =	implementation of the WebSocket protocol for ruby

DISTNAME =	websocket-driver-0.7.0
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	https://github.com/faye/websocket-driver-ruby

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-websocket-extensions,${MODRUBY_FLAVOR}>=0.1.0

.include <bsd.port.mk>
