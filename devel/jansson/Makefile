# $OpenBSD: Makefile,v 1.9 2016/10/08 09:47:24 dcoppa Exp $

COMMENT =		library for manipulating JSON data

DISTNAME =		jansson-2.9

REVISION =		0

SHARED_LIBS =		jansson 2.0

CATEGORIES =		devel

HOMEPAGE =		http://www.digip.org/jansson/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.digip.org/jansson/releases/

MODULES = 		devel/cmake

CONFIGURE_ARGS += 	-DBUILD_SHARED_LIBS=ON \
			-DJANSSON_BUILD_DOCS=OFF \
			-DJANSSON_EXAMPLES=OFF

.include <bsd.port.mk>
