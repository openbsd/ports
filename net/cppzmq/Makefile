# $OpenBSD: Makefile,v 1.3 2018/08/26 17:56:06 rsadowski Exp $

COMMENT =		C++ bindings for ZeroMQ

GH_ACCOUNT =		zeromq
GH_PROJECT =		cppzmq
GH_TAGNAME =		v4.3.0

CATEGORIES =		net

HOMEPAGE =		http://zeromq.org/topics:cppzmq

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake

BUILD_DEPENDS =		net/zeromq

CONFIGURE_ARGS +=	-DCPPZMQ_BUILD_TESTS:Bool=No

.include <bsd.port.mk>
