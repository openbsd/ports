# $OpenBSD: Makefile,v 1.1.1.1 2014/10/04 18:35:46 kirby Exp $
SHARED_ONLY = 		Yes

COMMENT =		library for manipulating JSON data

DISTNAME =		jansson-2.6

SHARED_LIBS =		jansson 0.0 # 9.0

CATEGORIES =		devel

HOMEPAGE =		http://www.digip.org/jansson/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.digip.org/jansson/releases/

MODULES = 		devel/cmake

CONFIGURE_ARGS += 	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_DOCS=OFF

.include <bsd.port.mk>
