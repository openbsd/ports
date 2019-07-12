# $OpenBSD: Makefile,v 1.26 2019/07/12 20:46:25 sthen Exp $

# Crashes on strict-alignment archs, see: src/base/system.c:164
ONLY_FOR_ARCHS=	amd64 i386 powerpc

COMMENT=	platform game featuring buggers equipped with weapons

V=		0.6.4
DISTNAME=	teeworlds-${V}-src
PKGNAME=	teeworlds-${V}
CATEGORIES=	games
REVISION=	2

HOMEPAGE=	http://www.teeworlds.com/

BAM_VERSION=	0.4.0
BAM_WRKSRC=	${WRKSRC}/bam-${BAM_VERSION}

MASTER_SITES=	https://downloads.teeworlds.com/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} bam-${BAM_VERSION}${EXTRACT_SUFX}

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB=	GL GLU SDL X11 c freetype m pthread ${COMPILER_LIBCXX} wavpack z

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	audio/wavpack \
		devel/sdl

MODULES=	lang/python
MODPY_RUNDEP=	No

SUBST_VARS=	CC CXX CFLAGS CXXFLAGS X11BASE

NO_TEST=	Yes

# Give it a chance on ppc
CXXFLAGS+=	-fsigned-char

post-extract:
	@mv ${WRKDIR}/bam-${BAM_VERSION} ${BAM_WRKSRC}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/engine/shared/storage.cpp \
		${WRKSRC}/src/game/client/gameclient.cpp \
		${WRKSRC}/scripts/build.py \
		${WRKSRC}/scripts/compiler.py \
		${WRKSRC}/scripts/font_installer.sh \
		${WRKSRC}/scripts/make_src.py \
		${WRKSRC}/bam.lua \
		${WRKSRC}/configure.lua \
		${BAM_WRKSRC}/make_unix.sh \
		${BAM_WRKSRC}/src/driver_gcc.lua \
		${BAM_WRKSRC}/src/base.lua
	# Make sure internal wavpack and zlib can't be picked up
	rm -rf ${WRKSRC}/src/engine/external/{wavpack,zlib}
	# Don't provide an extra copy of DejaVu
	rm -rf ${WRKSRC}/data/fonts

# build bam executable - teeworlds own build system
pre-build:
	cd ${BAM_WRKSRC} && /bin/sh -v make_unix.sh

do-build:
	cd ${WRKSRC} && CC=${CC} ${BAM_WRKSRC}/bam -a -v release wavpack=${LOCALBASE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teeworlds ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/teeworlds_srv ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/teeworlds
	cd ${WRKSRC}; tar cf - data | tar xf - -C ${PREFIX}/share/teeworlds

.include <bsd.port.mk>
