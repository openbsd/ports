COMMENT =	Qt-based MPD client

GH_ACCOUNT=     nullobsi
GH_PROJECT=     cantata
GH_TAGNAME=     v3.3.0

CATEGORIES =	audio

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6Sql Qt6Svg Qt6Widgets
WANTLIB += Qt6Xml avahi-client avahi-common avcodec avformat avutil
WANTLIB += c cddb cdio_cdda cdio_paranoia ebur128 m mpg123 mtp
WANTLIB += musicbrainz5 tag z

MODULES =	devel/cmake \
		x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	audio/libcddb \
		audio/libcdio-paranoia \
		audio/libebur128 \
		audio/libmusicbrainz5 \
		audio/mpg123 \
		audio/taglib>=2.0 \
		devel/libmtp \
		graphics/ffmpeg \
		net/avahi,-libs \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsvg

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX:Path=${PREFIX} \
			-DENABLE_LIBVLC=OFF

.include <bsd.port.mk>
