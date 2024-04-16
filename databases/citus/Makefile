COMMENT =		extension to horizontally scale PostgreSQL

GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v12.1.2

CATEGORIES =		databases
HOMEPAGE =		https://www.citusdata.com/

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto pq ssl

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		databases/postgresql
BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			databases/postgresql,-contrib \
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
