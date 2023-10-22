USE_WXNEEDED =		Yes

#BROKEN =		SIGILL on startup (BTI?)
#0  0x000009e081205c60 in ?? ()
#1  0x000009df7f7883df in vmEntryToJavaScript () from /usr/local/lib/libJavaScriptCore.so.0.0
USE_NOBTCFI =		Yes

COMMENT =		feature-rich dictionary lookup program
CATEGORIES =		textproc education x11

DIST_TUPLE =		github	goldendict	goldendict	1.5.0	.

# GPLv3+
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Help Qt5Multimedia
WANTLIB += Qt5Network Qt5PrintSupport Qt5Sql Qt5Svg Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5X11Extras Qt5Xml X11
WANTLIB += Xtst ao avcodec avformat avutil bz2 c execinfo hunspell-1.7
WANTLIB += iconv lzo2 m ogg swresample tiff vorbis vorbisfile
WANTLIB += z

MODULES =		devel/qmake \
			x11/qt5

# unported;  fatal error: 'eb/eb.h' file not found
MODQMAKE_ARGS =		CONFIG+=no_epwing_support

MODQMAKE_PROJECTS =	./goldendict.pro

LIB_DEPENDS =		archivers/bzip2 \
			archivers/lzo2 \
			audio/libao \
			audio/libogg \
			audio/libvorbis \
			converters/libiconv \
			graphics/ffmpeg \
			graphics/tiff \
			textproc/hunspell \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg \
			x11/qt5/qttools \
			x11/qt5/qtwebkit \
			x11/qt5/qtx11extras

RUN_DEPENDS =		devel/desktop-file-utils

# XXX goldendict.pro only links it on 'unix:!mac && arm' (??) or 'freebsd'
LDFLAGS +=		-liconv

.include <bsd.port.mk>
