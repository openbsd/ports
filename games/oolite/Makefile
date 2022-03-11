COMMENT=	space combat and trading game in the style of Elite

VERSION=	1.73.4
REVISION =	18
DISTNAME=	oolite-dev-source-${VERSION}
PKGNAME=	oolite-${VERSION}
CATEGORIES=	games

HOMEPAGE=	http://www.oolite.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oolite-linux.berlios/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/gnustep
MODGNUSTEP_NEEDS_GUI = No

LIB_DEPENDS=	devel/sdl-mixer \
		graphics/png

WANTLIB += c GL GLU SDL SDL_mixer png
WANTLIB += ${COMPILER_LIBCXX}

MAKE_FILE =	Makefile
MAKE_FLAGS =	LD="${CC}"
ALL_TARGET=	release

FIX_CRLF_FILES = GNUmakefile.postamble \
		Makefile \
		src/Cocoa/JoystickHandler.h \
		src/Core/Debug/OODebugTCPConsoleClient.m \
		src/Core/Materials/OOPNGTextureLoader.m \
		src/Core/OOAsyncQueue.m \
		src/Core/OOCPUInfo.h \
		src/Core/OOCacheManager.m \
		src/Core/OOLogHeader.m \
		src/Core/OOLogOutputHandler.m \
		src/Core/OOMaths.h \
		src/Core/OOPriorityQueue.m \
		src/Core/OXPVerifier/OOCheckRequiresPListVerifierStage.m \
		src/Core/OXPVerifier/OOOXPVerifierStage.m \
		src/Core/OldSchoolPropertyListWriting.m \
		src/Core/Scripting/OOJSOolite.m \
		src/SDL/OOSDLSoundMixer.m

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/oolite.app/oolite ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/oolite
	cp -R ${WRKBUILD}/oolite.app/Resources ${PREFIX}/share/oolite
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/oolite
	cp -R ${WRKSRC}/Doc/*.{TXT,pdf} ${PREFIX}/share/doc/oolite

.include <bsd.port.mk>
