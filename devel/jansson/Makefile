# $OpenBSD: Makefile,v 1.7 2016/06/28 12:50:36 jasper Exp $

COMMENT =		library for manipulating JSON data

DISTNAME =		jansson-2.7
REVISION = 		2

SHARED_LIBS =		jansson 1.0

CATEGORIES =		devel

HOMEPAGE =		http://www.digip.org/jansson/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.digip.org/jansson/releases/

MODULES = 		devel/cmake

CONFIGURE_ARGS += 	-DBUILD_SHARED_LIBS=ON \
			-DJANSSON_BUILD_DOCS=OFF

.include <bsd.port.mk>
