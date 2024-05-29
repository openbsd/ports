COMMENT =	graphical multi-protocol navigator

DISTNAME =	kristall-2024010500

GH_ACCOUNT =	MasterQ32
GH_PROJECT =	kristall
GH_COMMIT =	b4c677cdb5a9d7337758bcad45db5b21e2b85280

CATEGORIES =	net x11

# GPLv3
PERMIT_PACKAGE =Yes

WANTLIB +=	Qt5Multimedia Qt5MultimediaWidgets Qt5Svg
WANTLIB +=	Qt5Core Qt5Gui Qt5Network Qt5Widgets c m
WANTLIB +=	GL crypto glib-2.0 iconv intl
WANTLIB +=	pulse pulse-mainloop-glib
WANTLIB +=	${COMPILER_LIBCXX}

MODULES =	x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/pulseaudio \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg

USE_GMAKE =	Yes

NO_TEST =	Yes

MAKE_ENV +=	KRISTALL_VERSION=${DISTNAME} \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}"

FAKE_FLAGS =	mandir="${DESTDIR}${PREFIX}/man/man1"

ALL_TARGET =	kristall

.include <bsd.port.mk>
