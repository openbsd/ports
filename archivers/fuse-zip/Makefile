# $OpenBSD: Makefile,v 1.1.1.1 2014/01/28 01:01:52 jca Exp $

COMMENT =		navigate zip archives through FUSE

DISTNAME =		fuse-zip-0.4.0

CATEGORIES =		archivers

HOMEPAGE =		https://code.google.com/p/fuse-zip/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m stdc++ z zip

MASTER_SITES =		https://fuse-zip.googlecode.com/files/

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
