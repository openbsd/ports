# $OpenBSD: Makefile,v 1.9 2015/01/21 06:23:34 bentley Exp $

COMMENT =	tool to play previews of audio and video files

DISTNAME =	audiopreview-0.6
REVISION=	3

CATEGORIES =	multimedia

HOMEPAGE =	http://audiopreview.codealpha.net/audiopreview/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-0.10 \
		gthread-2.0 pthread xml2

MASTER_SITES = 	http://audiopreview.codealpha.net/files/

MODULES =	devel/gettext \
		textproc/intltool
RUN_DEPENDS =	multimedia/gstreamer-0.10/plugins-base \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ugly
BUILD_DEPENDS =	${RUN_DEPENDS}

USE_GROFF =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
