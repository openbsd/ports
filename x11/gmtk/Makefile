# $OpenBSD: Makefile,v 1.5 2012/03/26 14:41:16 dcoppa Exp $

COMMENT =	gnome-mplayer toolkit
DISTNAME =	gmtk-1.0.6b1
PKGNAME =	${DISTNAME:S/b1/beta1/}

SHARED_LIBS =	gmlib	0.0 \
		gmtk	0.0

CATEGORIES =	x11 devel

HOMEPAGE =	http://kdekorte.googlepages.com/gmtk/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://gmtk.googlecode.com/files/

MODULES =	devel/gettext \
		textproc/intltool

WANTLIB = GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
	  Xext Xfixes Xi Xinerama Xrandr Xrender \
	  Xxf86vm atk-1.0 cairo drm expat ffi \
	  fontconfig freetype gdk-x11-2.0 \
	  gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
	  gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
	  pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
	  pixman-1 png pthread-stubs stdc++ xcb \
	  xcb-render xcb-shm z

LIB_DEPENDS =		x11/gtk+2

RUN_DEPENDS =		x11/mplayer

USE_LIBTOOL =		yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-gsettings \
			--disable-gconf \
			--disable-gtk3 \
			--disable-keystore \
			--with-gio \
			--without-alsa \
			--without-pulseaudio

NO_REGRESS =	Yes

.include <bsd.port.mk>
