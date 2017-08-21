# $OpenBSD: Makefile,v 1.7 2017/08/21 17:58:12 jasper Exp $

COMMENT =		navigate zip archives through FUSE

DISTNAME =		fuse-zip-0.4.2

CATEGORIES =		archivers

HOMEPAGE =		https://bitbucket.org/agalanin/fuse-zip

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m ${COMPILER_LIBCXX} z zip

MASTER_SITES =		https://bitbucket.org/agalanin/fuse-zip/downloads/

LIB_DEPENDS =		archivers/libzip>=0.11.2

MAKE_FLAGS =		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		INSTALLPREFIX="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

do-configure:
	ln -s ${LOCALBASE}/bin/gmake ${WRKDIR}/bin/make

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fuse-zip ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/fuse-zip.1 ${PREFIX}/man/man1
	rm -Rf ${PREFIX}/share/man

.include <bsd.port.mk>
