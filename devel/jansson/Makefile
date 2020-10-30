# $OpenBSD: Makefile,v 1.15 2020/10/30 17:17:00 juanfra Exp $

COMMENT =		library for manipulating JSON data

DISTNAME =		jansson-2.12
REVISION =		0

SHARED_LIBS =		jansson 3.2

CATEGORIES =		devel

HOMEPAGE =		https://digip.org/jansson/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://digip.org/jansson/releases/

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DJANSSON_BUILD_SHARED_LIBS=ON \
			-DJANSSON_BUILD_DOCS=OFF \
			-DJANSSON_EXAMPLES=OFF

.include <bsd.port.mk>
