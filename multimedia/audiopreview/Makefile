# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:55 sthen Exp $

COMMENT =	tool to play previews of audio and video files

DISTNAME =	audiopreview-0.6
REVISION =	5

CATEGORIES =	multimedia

HOMEPAGE =	http://audiopreview.codealpha.net/audiopreview/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =  c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-0.10
WANTLIB += gthread-2.0 iconv intl pthread xml2

MASTER_SITES = 	http://audiopreview.codealpha.net/files/

MODULES =	textproc/intltool
RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
