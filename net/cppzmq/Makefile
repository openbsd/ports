# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:24 sthen Exp $

COMMENT =		C++ bindings for ZeroMQ

GH_ACCOUNT =		zeromq
GH_PROJECT =		cppzmq
GH_TAGNAME =		v4.3.0

CATEGORIES =		net

HOMEPAGE =		http://zeromq.org/topics:cppzmq

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		net/zeromq

CONFIGURE_ARGS +=	-DCPPZMQ_BUILD_TESTS:Bool=No

.include <bsd.port.mk>
