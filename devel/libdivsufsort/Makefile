COMMENT =	library for lightweight suffix array construction algorithm

PKGNAME =	libdivsufsort-2.0.2.1

# libdivsufsort did not tag their latest release in June 2015, use git hash
DIST_TUPLE =	github y-256 libdivsufsort \
		522cac82e5f4980fb7dc4f9f982aa63069b2d4ad .

SHARED_LIBS =	divsufsort	0.0 \
		divsufsort64	0.0

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_DIVSUFSORT64=ON

.include <bsd.port.mk>
