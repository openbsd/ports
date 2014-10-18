# $OpenBSD: Makefile,v 1.3 2014/10/18 14:39:35 kirby Exp $

SHARED_ONLY = 		Yes

COMMENT =		library for manipulating JSON data

DISTNAME =		jansson-2.7

SHARED_LIBS =		jansson 1.0

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
