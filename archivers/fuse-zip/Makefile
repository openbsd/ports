# $OpenBSD: Makefile,v 1.13 2018/12/10 16:28:54 kn Exp $

COMMENT =		navigate zip archives through FUSE

DISTNAME =		fuse-zip-0.5.0

CATEGORIES =		archivers

HOMEPAGE =		https://bitbucket.org/agalanin/fuse-zip

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c fuse m zip

MASTER_SITES =		https://bitbucket.org/agalanin/fuse-zip/downloads/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/libzip>=0.11.2

MAKE_FLAGS =		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		prefix="${PREFIX}" mandir="${PREFIX}/man"

USE_GMAKE =		Yes

TEST_TARGET =		check

pre-test:
	ln -sf ${LOCALBASE}/bin/gmake ${WRKDIR}/bin/make

post-install:
	gzip -d ${PREFIX}/man/man[0-9]/*.gz

.include <bsd.port.mk>
