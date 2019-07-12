# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:33 sthen Exp $

COMMENT =		socket library providing multiple communication patterns

GH_ACCOUNT =		nanomsg
GH_PROJECT =		nanomsg
GH_TAGNAME =		1.1.5

SHARED_LIBS +=  	nanomsg		0.0 # 1.0

CATEGORIES =		net

HOMEPAGE =		http://nanomsg.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

WANTLIB +=		c pthread

.include <bsd.port.mk>
