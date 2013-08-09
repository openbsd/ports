# $OpenBSD: Makefile,v 1.17 2013/08/09 19:04:49 ajacoutot Exp $

COMMENT =	platform game featuring buggers equipped with weapons

V =		0.5.2
DISTNAME =	teeworlds-${V}-src
PKGNAME =	teeworlds-${V}
REVISION =	4
CATEGORIES =	games

MAINTAINER =	Jonathan Armani <armani@openbsd.org>
HOMEPAGE =	http://www.teeworlds.com/

BAM_VERSION =	0.2.0
BAM_WRKSRC =	${WRKSRC}/bam-${BAM_VERSION}
BAM_TARGET =	release

MASTER_SITES =	http://www.teeworlds.com/files/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} bam-${BAM_VERSION}${EXTRACT_SUFX}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	GL GLU SDL X11 c m pthread stdc++ z
LIB_DEPENDS =	devel/sdl

MODULES =	lang/python

NO_TEST =	Yes

GAMEDIR =	${PREFIX}/share/teeworlds

SUBST_VARS =	CC CXX CFLAGS

post-extract:
	@mv ${WRKDIR}/bam-${BAM_VERSION} ${BAM_WRKSRC}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/engine/e_engine.c \
		${WRKSRC}/scripts/make_src.py \
		${WRKSRC}/scripts/font_installer.sh \
		${WRKSRC}/default.bam \
		${BAM_WRKSRC}/make_unix.sh \
		${BAM_WRKSRC}/src/driver_gcc.bam \
		${BAM_WRKSRC}/src/base.bam

# build bam executable - teeworlds own build system
pre-build:
	cd ${BAM_WRKSRC} && /bin/sh -v make_unix.sh

do-build:
	cd ${WRKSRC} && CC=${CC} ${BAM_WRKSRC}/src/bam -v ${BAM_TARGET}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teeworlds ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/teeworlds_srv ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${GAMEDIR}
	cd ${WRKSRC}; tar cf - data | tar xf - -C ${GAMEDIR}

.include <bsd.port.mk>
