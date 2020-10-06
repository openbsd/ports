# $OpenBSD: Makefile,v 1.8 2020/10/06 09:30:06 jasper Exp $

COMMENT =		C++ bindings for ZeroMQ

GH_ACCOUNT =		zeromq
GH_PROJECT =		cppzmq
GH_TAGNAME =		v4.7.1

CATEGORIES =		net

HOMEPAGE =		http://zeromq.org/topics:cppzmq

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		net/zeromq

CONFIGURE_ARGS +=	-DCPPZMQ_BUILD_TESTS:Bool=No

NO_TEST =		Yes

.include <bsd.port.mk>
