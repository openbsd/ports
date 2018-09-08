# $OpenBSD: Makefile,v 1.10 2018/09/08 10:31:14 espie Exp $

COMMENT =		navigate zip archives through FUSE

DISTNAME =		fuse-zip-0.4.5

CATEGORIES =		archivers

HOMEPAGE =		https://bitbucket.org/agalanin/fuse-zip

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${COMPILER_LIBCXX} bz2 c fuse m z zip

MASTER_SITES =		https://bitbucket.org/agalanin/fuse-zip/downloads/

LIB_DEPENDS =		archivers/libzip>=0.11.2

MAKE_FLAGS =		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="${LDFLAGS}" prefix="${PREFIX}"

USE_GMAKE =		Yes

TEST_TARGET =		check

do-configure:
	ln -s ${LOCALBASE}/bin/gmake ${WRKDIR}/bin/make

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fuse-zip ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/fuse-zip.1 ${PREFIX}/man/man1
	rm -Rf ${PREFIX}/share/man

.include <bsd.port.mk>
