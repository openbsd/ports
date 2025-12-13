COMMENT =	Qt-based MPD client

GH_ACCOUNT=     nullobsi
GH_PROJECT=     cantata
GH_TAGNAME=     v3.4.0

CATEGORIES =	audio

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ItemViews Qt6Concurrent
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6Sql
WANTLIB += Qt6Svg Qt6Widgets Qt6Xml avahi-client avahi-common
WANTLIB += avcodec avformat avutil c ebur128 m mpg123 tag z

MODULES =	devel/cmake \
		x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/libebur128 \
		audio/mpg123 \
		audio/taglib \
		graphics/ffmpeg \
		net/avahi,-libs \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsvg

LIB_DEPENDS +=	devel/kf6/karchive \
		devel/kf6/kitemviews

CONFIGURE_ARGS +=	-DENABLE_UDISKS2=OFF \
			-DENABLE_DEVICES_SUPPORT=OFF \
			-DENABLE_LIBVLC=OFF

.include <bsd.port.mk>
