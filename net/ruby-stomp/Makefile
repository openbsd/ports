# $OpenBSD: Makefile,v 1.22 2017/01/03 11:53:58 sebastia Exp $

COMMENT = 	Streaming Text Orientated Messaging Protocol (STOMP) client

# When upgrading to something higher than 1.3.X, ensure it does not break
# MCollective Rabbitmq SSL backend communication, to not run into 
# error like: es1_oldrecv: receive failed: Stomp::Error::ReceiveTimeout 

DISTNAME = 	stomp-1.3.5
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
