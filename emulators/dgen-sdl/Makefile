# $OpenBSD: Makefile,v 1.10 2014/08/19 05:50:29 landry Exp $

BROKEN-alpha =		OOM or ICE on hqx/src/hq4x_32.c
BROKEN-hppa =		OOM or ICE on hqx/src/hq4x_32.c
COMMENT =		Sega Megadrive/Genesis emulator
DISTNAME =		dgen-sdl-1.32
CATEGORIES =		emulators games
HOMEPAGE =		http://dgen.sourceforge.net/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

FLAVORS =		debugger
FLAVOR ?=

# Various parts of dgen are under different licenses
# Mainly a 3 clause BSD license, but also:
#  - musa non-commercial license
#  - starscream non-commercial license
#  - mz80 non-commercial license
#  - cz80 non-commercial license
#  - scale2x GPLv2
#  - hqx LGPL
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		GL SDL archive c m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dgen/}

BUILD_DEPENDS =		devel/sdl

# optimisation for x86 using asm
.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS +=        devel/nasm
.endif

LIB_DEPENDS =		devel/sdl \
			archivers/libarchive

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

# m68k debugger, at a slight performance cost
.if ${FLAVOR:Mdebugger}
CONFIGURE_ARGS +=	--enable-debugger
.endif

SAMPLEDIR =	${PREFIX}/share/examples/dgen-sdl/
DOCDIR =	${PREFIX}/share/doc/dgen-sdl/
# cover our asses by providing copies of the non-free(ish) licenses
# particularly starscream:
# "Starscream may be distributed freely in unmodified form, as long as this
# documentation is included."
LICENSES =	musa/musa-readme.txt star/stardoc.txt \
		mz80/mz80.txt cz80/cz80-readme.txt
post-install:
	mkdir ${SAMPLEDIR}
	cp ${WRKSRC}/sample.dgenrc ${SAMPLEDIR}
	mkdir -p ${DOCDIR}
	cp ${WRKSRC}/musa/readme.txt ${WRKSRC}/musa/musa-readme.txt
	cp ${WRKSRC}/cz80/readme.txt ${WRKSRC}/cz80/cz80-readme.txt
.for i in ${LICENSES}
	cp ${WRKSRC}/$i ${DOCDIR}
.endfor

.include <bsd.port.mk>
