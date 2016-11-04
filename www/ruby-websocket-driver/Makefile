# $OpenBSD: Makefile,v 1.2 2016/11/04 21:49:09 jeremy Exp $

COMMENT =	implementation of the WebSocket protocol for ruby

DISTNAME =	websocket-driver-0.6.4
CATEGORIES =	www

HOMEPAGE =	https://github.com/faye/websocket-driver-ruby

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-websocket-extensions,${MODRUBY_FLAVOR}>=0.1.0

.include <bsd.port.mk>
