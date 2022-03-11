COMMENT=	astrology program for X11 and text-based user interfaces

DISTNAME=	ast71src
PKGNAME=	astrolog-7.10
REVISION=	0

CATEGORIES=	misc

HOMEPAGE=	https://www.astrolog.org/astrolog.htm

MAINTAINER=	Evandro Rathke <erathke@gmail.com>

PERMIT_PACKAGE=	Yes

# Software: GPLv2, Ephemeris: may be used by GPLv2 software, see
# https://www.astro.com/swisseph/swephinfo_e.htm
WANTLIB += X11 c m

# TLS
COMPILER=	base-clang ports-gcc

MASTER_SITES=	https://www.astrolog.org/ftp/
DISTFILES=	${DISTNAME}.zip \
		${DISTNAME}-{ephem/}astephem.zip
UNZIP=		unzip -a
WRKDIST=	${WRKDIR}

CXXFLAGS+=	-DDEFAULT_DIR='\"${PREFIX}/share/astrolog\"' \
		-I"${X11BASE}/include"
LIBS=		-L"${X11BASE}/lib" -lm -lX11

ALL_TARGET=	astrolog
MAKE_FLAGS=	LIBS="${LIBS}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/astrolog ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc/,}astrolog
	${INSTALL_DATA} ${WRKSRC}/*.{as,se1,txt} ${PREFIX}/share/astrolog
	${INSTALL_DATA} ${WRKSRC}/*.htm ${PREFIX}/share/doc/astrolog

.include <bsd.port.mk>
