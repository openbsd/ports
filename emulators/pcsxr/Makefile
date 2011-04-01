# $OpenBSD: Makefile,v 1.1.1.1 2011/04/01 17:18:55 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	Playstation 1 emulator

DISTNAME =	pcsxr-1.9.92

CATEGORIES =	emulators games
HOMEPAGE =	http://pcsxr.codeplex.com/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://download.codeplex.com/Project/Download/FileDownload.aspx?ProjectName=pcsxr&DownloadId=140521&FileTime=129254829621800000&Build=17672&
FETCH_CMD =	/usr/bin/ftp -o ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX} -V ${_PROGRESS} -k ${FTP_KEEPALIVE}
EXTRACT_SUFX =	.tar.bz2

USE_GMAKE =	Yes

MODULES =	devel/gettext

WANTLIB += GL SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst Xv Xxf86vm atk-1.0
WANTLIB += c cairo cdio drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndio usbhid xcb xcb-render xcb-shm xml2 z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="-I/usr/X11R6/include/"
CONFIGURE_ARGS =	--enable-libcdio --enable-opengl

LIB_DEPENDS =	audio/libcdio \
		devel/libglade2 \
		devel/sdl \
		devel/sdl-net \
		x11/gtk+2
RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
