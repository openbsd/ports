ONLY_FOR_ARCHS = i386 amd64 powerpc powerpc64 arm

COMMENT =	Atari ST/STE/TT/Falcon emulator

V =		2.3.1
DISTNAME =	hatari-${V}
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	emulators

HOMEPAGE =	https://hatari.tuxfamily.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SDL2 SM X11 Xext c m png pthread readline z

MASTER_SITES =	https://download.tuxfamily.org/hatari/$V/

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		sysutils/mtools \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/sdl2 \
		graphics/png

MODULES =	devel/cmake \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_ADJ_FILES = tools/debugger/*.py \
		  tools/hconsole/*.py \
		  tools/*.py

CONFIGURE_ARGS = -DMANDIR=${PREFIX}/man/man1

NO_TEST =	Yes

pre-configure:
	@sed -i 's,/usr/share,${PREFIX}/share,' \
		${WRKSRC}/tools/hconsole/hconsole.1

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	${PREFIX}/share/hatari/hconsole/*.py
	gunzip ${PREFIX}/man/man1/*.1.gz

.include <bsd.port.mk>
