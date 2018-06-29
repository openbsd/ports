# $OpenBSD: Makefile,v 1.14 2018/06/29 22:16:08 espie Exp $

COMMENT =	Qt-based MPD client

V =			2.2.0
DISTNAME =	cantata-${V}
REVISION =	2
HOMEPAGE =	https://github.com/CDrummond/cantata

MASTER_SITES =	https://github.com/CDrummond/cantata/releases/download/v${V}/
EXTRACT_SUFX =	.tar.bz2

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
