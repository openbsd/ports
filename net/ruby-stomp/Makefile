# $OpenBSD: Makefile,v 1.24 2018/07/27 08:42:58 sebastia Exp $

COMMENT = 	Streaming Text Orientated Messaging Protocol (STOMP) client

DISTNAME = 	stomp-1.4.4
EPOCH =		0
CATEGORIES = 	net

HOMEPAGE =	https://github.com/stompgem/stomp

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
