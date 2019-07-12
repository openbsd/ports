# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:36 sthen Exp $

COMMENT =		library for manipulating JSON data

DISTNAME =		jansson-2.12

SHARED_LIBS =		jansson 3.2

CATEGORIES =		devel

HOMEPAGE =		http://www.digip.org/jansson/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://www.digip.org/jansson/releases/

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DJANSSON_BUILD_SHARED_LIBS=ON \
			-DJANSSON_BUILD_DOCS=OFF \
			-DJANSSON_EXAMPLES=OFF

.include <bsd.port.mk>
