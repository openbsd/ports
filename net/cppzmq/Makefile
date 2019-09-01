# $OpenBSD: Makefile,v 1.5 2019/09/01 11:44:13 jasper Exp $

COMMENT =		C++ bindings for ZeroMQ

GH_ACCOUNT =		zeromq
GH_PROJECT =		cppzmq
GH_TAGNAME =		v4.4.1

CATEGORIES =		net

HOMEPAGE =		http://zeromq.org/topics:cppzmq

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		net/zeromq

CONFIGURE_ARGS +=	-DCPPZMQ_BUILD_TESTS:Bool=No

.include <bsd.port.mk>
