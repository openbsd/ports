# $OpenBSD: Makefile,v 1.3 2012/09/21 14:48:06 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		DVD ripper/converter

DISTNAME =		ogmrip-0.13.8
REVISION =		0

SHARED_LIBS +=  ogmdvd-gtk                0.0 # 1.0
SHARED_LIBS +=  ogmdvd                    0.0 # 1.0
SHARED_LIBS +=  ogmjob                    0.0 # 1.0
SHARED_LIBS +=  ogmrip-gtk                0.0 # 1.0
SHARED_LIBS +=  ogmrip-lavc               0.0 # 1.0
SHARED_LIBS +=  ogmrip-mplayer            0.0 # 1.0
SHARED_LIBS +=  ogmrip                    0.0 # 1.0

CATEGORIES =		multimedia

HOMEPAGE =		http://ogmrip.sourceforge.net/en/index.html

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += dbus-1 dbus-glib-1 drm dvdread enca enchant expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m notify ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ theora tiff xcb xcb-render xcb-shm xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ogmrip/}

MODULES =		devel/gettext \
			devel/gconf2 \
			textproc/intltool
BUILD_DEPENDS =		x11/mplayer \
			textproc/gsed
RUN_DEPENDS =		x11/mplayer \
			audio/lame \
			multimedia/mkvtoolnix \
			multimedia/ogmtools \
			audio/vorbis-tools \
			devel/desktop-file-utils \
			graphics/gocr \
			graphics/ocrad \
			graphics/tesseract
LIB_DEPENDS =		multimedia/libtheora \
			devel/gconf2 \
			devel/libglade2 \
			devel/libnotify \
			textproc/enchant \
			converters/enca \
			devel/libdvdread

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-gtk-doc

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

MODGCONF2_SCHEMAS_DIR =	ogmrip

NO_REGRESS =		Yes

post-install:
	rm ${PREFIX}/lib/ogmrip/{audio,container,options,subp,video}-plugins/*.la

.include <bsd.port.mk>
