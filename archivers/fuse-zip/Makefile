# $OpenBSD: Makefile,v 1.3 2017/04/10 11:45:22 sthen Exp $

COMMENT =		navigate zip archives through FUSE

DISTNAME =		fuse-zip-0.4.0

CATEGORIES =		archivers

HOMEPAGE =		https://code.google.com/p/fuse-zip/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m ${LIBCXX} z zip

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=fuse-zip/}

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
