# $OpenBSD: Makefile,v 1.9 2017/08/18 18:11:52 espie Exp $

COMMENT =	Qt-based MPD client

DISTNAME =	cantata-2.0.1
REVISION =	1

CATEGORIES =	audio

GH_TAGNAME=	v2.0.1
GH_ACCOUNT=	CDrummond
GH_PROJECT=	cantata

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext \
		devel/cmake \
		x11/qt5

RUN_DEPENDS +=	devel/desktop-file-utils
RUN_DEPENDS +=	x11/gtk+3,-guic
LIB_DEPENDS +=	audio/mpg123 \
		audio/speexdsp \
		audio/libcddb \
		audio/libmusicbrainz5 \
		audio/taglib \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg \
		devel/libmtp \
		graphics/ffmpeg

WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Sql Qt5Svg Qt5Widgets Qt5Xml avcodec
WANTLIB += avformat avutil c cdda_interface cdda_paranoia cddb
WANTLIB += m mpg123 mtp musicbrainz5 pthread speexdsp tag z
WANTLIB += ${COMPILER_LIBCXX}

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX:Path=${PREFIX} \
			-DENABLE_LIBVLC=OFF \
			-DLRELEASE_EXECUTABLE:String=${MODQT_LRELEASE} \
			-DLCONVERT_EXECUTABLE:String=${LOCALBASE}/lib/qt5/bin/lconvert

.include <bsd.port.mk>
