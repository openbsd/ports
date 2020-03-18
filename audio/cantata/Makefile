# $OpenBSD: Makefile,v 1.22 2020/03/18 07:01:12 landry Exp $

COMMENT =	Qt-based MPD client

V =		2.4.1
DISTNAME =	cantata-${V}
HOMEPAGE =	https://github.com/CDrummond/cantata

MASTER_SITES =	https://github.com/CDrummond/cantata/releases/download/v${V}/
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	audio

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += avcodec avformat avutil c cddb cdio cdio_cdda cdio_paranoia
WANTLIB += iconv m mpg123 mtp musicbrainz5 tag z avahi-client avahi-common

MODULES =	devel/cmake \
		x11/qt5

RUN_DEPENDS +=	devel/desktop-file-utils
RUN_DEPENDS +=	x11/gtk+3,-guic
LIB_DEPENDS +=	audio/mpg123 \
		audio/libcdio \
		audio/libcdio-paranoia \
		audio/libcddb \
		audio/libmusicbrainz5 \
		audio/taglib \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg \
		devel/libmtp \
		graphics/ffmpeg

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX:Path=${PREFIX} \
			-DENABLE_LIBVLC=OFF \
			-DLRELEASE_EXECUTABLE:String=${MODQT_LRELEASE} \
			-DLCONVERT_EXECUTABLE:String=${LOCALBASE}/lib/qt5/bin/lconvert

.include <bsd.port.mk>
