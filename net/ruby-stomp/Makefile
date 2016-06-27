# $OpenBSD: Makefile,v 1.19 2016/06/27 11:23:48 jasper Exp $

COMMENT = 	Streaming Text Orientated Messaging Protocol (STOMP) client

DISTNAME = 	stomp-1.4.1
CATEGORIES = 	net

HOMEPAGE =	https://github.com/stompgem/stomp

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
