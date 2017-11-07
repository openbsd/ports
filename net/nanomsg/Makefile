# $OpenBSD: Makefile,v 1.3 2017/11/07 12:01:18 jasper Exp $

COMMENT =		socket library providing multiple communication patterns

GH_ACCOUNT =		nanomsg
GH_PROJECT =		nanomsg
GH_TAGNAME =		1.1.2

SHARED_LIBS +=  	nanomsg		0.0 # 1.0

CATEGORIES =		net

HOMEPAGE =		http://nanomsg.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake

WANTLIB +=		c pthread

.include <bsd.port.mk>
