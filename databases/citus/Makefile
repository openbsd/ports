COMMENT =		extension to horizontally scale PostgreSQL

GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v11.1.4

CATEGORIES =		databases
HOMEPAGE =		https://www.citusdata.com/

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto execinfo m pq ssl xml2

LIB_DEPENDS =		databases/postgresql
BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			shells/bash

FAKE_TARGET =		install-all

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libcurl \
			--without-lz4 \
			--without-zstd

pre-test:
	cd ${WRKSRC}/src/test/regress; \
	sed -i 's,^#!/bin/bash,#!${LOCALBASE}/bin/bash,' \
	    `find . -type f`

.include <bsd.port.mk>
