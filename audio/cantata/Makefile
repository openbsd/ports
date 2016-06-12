# $OpenBSD: Makefile,v 1.3 2016/06/12 05:44:46 jca Exp $

COMMENT =	Qt-based MPD client

DISTNAME =	cantata-1.5.2

CATEGORIES =	audio

HOMEPAGE =	https://github.com/cdrummond/cantata
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	https://rhaalovely.net/stuff/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext \
		gcc4 \
		devel/cmake \
		x11/qt4

# archs where qt4 builds
MODGCC4_ARCHS =		amd64 i386 powerpc sparc64
MODGCC4_LANGS =		c c++

RUN_DEPENDS +=	devel/desktop-file-utils
RUN_DEPENDS +=	x11/gtk+3,-guic
LIB_DEPENDS +=	audio/mpg123 \
		audio/speex \
		audio/libcddb \
		audio/libmusicbrainz5 \
		audio/taglib \
		devel/libmtp \
		devel/qjson \
		graphics/ffmpeg

WANTLIB += ICE QtDBus QtGui QtNetwork QtSvg QtXml SM X11 Xext
WANTLIB += avcodec avformat avutil c cdda_interface cdda_paranoia
WANTLIB += cddb m mpg123 mtp musicbrainz5 pthread qjson speexdsp
WANTLIB += tag z

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX:Path=${PREFIX} \
			-DLRELEASE_EXECUTABLE:String=${MODQT_LRELEASE} \
			-DLCONVERT_EXECUTABLE:String=lconvert4

.include <bsd.port.mk>
