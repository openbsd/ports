COMMENT=	lightweight library for extracting data from zip files

CATEGORIES=	archivers

GH_ACCOUNT =	gdraheim
GH_PROJECT =	zziplib
GH_TAGNAME =	v0.13.72
REVISION =	1

SHARED_LIBS +=  zzip                      16.0 # 0.0
SHARED_LIBS +=  zzipfseeko                14.0 # 0.0
SHARED_LIBS +=  zzipmmapped               14.0 # 0.0
SHARED_LIBS +=  zzipwrap                  14.0 # 0.0

# LGPL/MPL license
PERMIT_PACKAGE=		Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c z

BUILD_DEPENDS=		archivers/zip \
			devel/sdl2 \
			shells/bash

MODULES =		devel/cmake \
			lang/python

MODPY_RUNDEP =		No

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

TEST_TARGET =		tests

.include <bsd.port.mk>
