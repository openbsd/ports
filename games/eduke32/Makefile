# $OpenBSD: Makefile,v 1.6 2014/01/08 14:01:10 sthen Exp $

COMMENT =	Enhanced Duke Nukem 3D engine
RDATE =		20120301
RTAG =		2394
DISTNAME =	eduke32_src_${RDATE}-${RTAG}
PKGNAME =	eduke32-2.0.0.${RTAG}
REVISION =	1
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	games x11

HOMEPAGE =	http://www.eduke32.com/

MAINTAINER =	Ryan Freeman <rfreeman@openbsd.org>

# GPLv2, BUILD license and shareware data
PERMIT_PACKAGE_CDROM =  "BUILD engine license is not compatible with GPLv2."
PERMIT_PACKAGE_FTP =    "BUILD engine license is not compatible with GPLv2."
PERMIT_DISTFILES_FTP =  "BUILD engine license is not compatible with GPLv2."

BUILD_DEPENDS = archivers/unzip \
		graphics/gdk-pixbuf2

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS += devel/nasm
.endif

WANTLIB =	SDL c m pthread stdc++ SDL_mixer>=3 vorbisfile vpx

LIB_DEPENDS =	audio/libvorbis \
		multimedia/libvpx \
		devel/sdl \
		devel/sdl-mixer

# dlopen()'d; shows as Extra in check-lib-depends but it is used
LIB_DEPENDS +=	x11/gtk+2
WANTLIB +=	gtk-x11-2.0

RUN_DEPENDS =	games/duke3ddata

MASTER_SITES =	http://dukeworld.duke4.net/eduke32/synthesis/old/${RDATE}-${RTAG}/ \
		http://dukeworld.duke4.net/eduke32/synthesis/${RDATE}-${RTAG}/

# make sure we can see compilation output, respect CC/CXX, don't strip!
MAKE_FLAGS =	PRETTY_OUTPUT=0 CC="${CC}" CXX="${CXX}" DEBUGANYWAY=1
USE_GMAKE =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/eduke32_${RDATE}-${RTAG}/

post-extract:
	# check for data files in correct location
	@perl -pi -e "s,/usr/share/games/eduke32,${TRUEPREFIX}/share/duke3d," \
		${WRKSRC}/source/astub.c
	@perl -pi -e "s,/usr/share/games/eduke32,${TRUEPREFIX}/share/duke3d," \
		${WRKSRC}/source/game.c
	@perl -pi -e "s,./eduke32,eduke32," ${WRKSRC}/build/include/editor.h
	# make plaintext files less annoying to read...
	@perl -MExtUtils::Command -e dos2unix \
		${WRKSRC}/tiles.cfg \
		${WRKSRC}/names.h \
		${WRKSRC}/GNU.TXT \
		${WRKSRC}/buildlic.txt \
		${WRKSRC}/samples/*.sample \
		${WRKSRC}/samples/*.txt

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/eduke32 ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/mapster32 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/duke3d
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eduke32
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/eduke32
	# mapster32 help files
	${INSTALL_DATA} ${WRKDIST}/m32help.hlp ${PREFIX}/share/duke3d/
	${INSTALL_DATA} ${WRKDIST}/SEHELP.HLP ${PREFIX}/share/duke3d/
	${INSTALL_DATA} ${WRKDIST}/STHELP.HLP ${PREFIX}/share/duke3d/
	# mapster32 config and config header file
	${INSTALL_DATA} ${WRKDIST}/tiles.cfg ${PREFIX}/share/duke3d/
	${INSTALL_DATA} ${WRKDIST}/names.h ${PREFIX}/share/duke3d/
	# eduke32/mapster32 licenses
	${INSTALL_DATA} ${WRKDIST}/GNU.TXT ${PREFIX}/share/doc/eduke32/
	${INSTALL_DATA} ${WRKDIST}/buildlic.txt ${PREFIX}/share/doc/eduke32/
	# sample game mapping/modding data files
	${INSTALL_DATA} ${WRKDIST}/samples/* ${PREFIX}/share/examples/eduke32/

.if ${MACHINE_ARCH:Mi386}
CFLAGS +=	-fno-pie
MAKE_FLAGS +=	MISCLINKOPTS=-nopie
.endif

.include <bsd.port.mk>
