# $OpenBSD: Makefile,v 1.11 2018/01/03 08:02:26 rsadowski Exp $

COMMENT =	Qt-based MPD client

GH_ACCOUNT=	CDrummond
GH_PROJECT=	cantata
GH_TAGNAME=	v2.2.0

CATEGORIES =	audio

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += avcodec avformat avutil c cddb cdio cdio_cdda cdio_paranoia
WANTLIB += m mpg123 mtp musicbrainz5 tag z

MODULES =	devel/cmake \
		x11/qt5

RUN_DEPENDS +=	devel/desktop-file-utils
RUN_DEPENDS +=	x11/gtk+3,-guic
LIB_DEPENDS +=	audio/mpg123 \
		audio/libcdio \
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
