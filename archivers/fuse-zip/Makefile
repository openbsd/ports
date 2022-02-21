# $OpenBSD: Makefile,v 1.17 2022/02/21 16:27:15 kn Exp $

COMMENT =		navigate zip archives through FUSE

DISTNAME =		fuse-zip-0.7.2
REVISION =		0

CATEGORIES =		archivers

HOMEPAGE =		https://bitbucket.org/agalanin/fuse-zip

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c fuse m zip

MASTER_SITES =		https://bitbucket.org/agalanin/fuse-zip/downloads/

COMPILER =		base-clang ports-gcc

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
# fuse-zip.cpp:492:17: error: 'ENODATA' was not declared in this scope
# only base-clang ends up defining this errno, so use an unused errno instead
CXXFLAGS +=		-DENODATA=ENOATTR
.endif

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
