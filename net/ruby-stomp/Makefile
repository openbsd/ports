# $OpenBSD: Makefile,v 1.28 2019/12/12 07:40:35 sebastia Exp $

COMMENT = 	Streaming Text Orientated Messaging Protocol (STOMP) client

DISTNAME = 	stomp-1.4.9
EPOCH =		0
CATEGORIES = 	net

HOMEPAGE =	https://github.com/stompgem/stomp

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE = Yes

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
