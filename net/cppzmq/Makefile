# $OpenBSD: Makefile,v 1.9 2021/10/26 14:46:30 jasper Exp $

COMMENT =		C++ bindings for ZeroMQ

GH_ACCOUNT =		zeromq
GH_PROJECT =		cppzmq
GH_TAGNAME =		v4.8.1

CATEGORIES =		net

HOMEPAGE =		http://zeromq.org/topics:cppzmq

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		net/zeromq

CONFIGURE_ARGS +=	-DCPPZMQ_BUILD_TESTS:Bool=No

NO_TEST =		Yes

.include <bsd.port.mk>
