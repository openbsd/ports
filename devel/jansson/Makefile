# $OpenBSD: Makefile,v 1.11 2017/06/19 09:53:51 kirby Exp $

COMMENT =		library for manipulating JSON data

DISTNAME =		jansson-2.10

SHARED_LIBS =		jansson 3.0

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
