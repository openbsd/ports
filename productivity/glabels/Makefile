# $OpenBSD: Makefile,v 1.23 2011/11/03 22:21:21 jasper Exp $

COMMENT =	labels and business card designer

GNOME_PROJECT =	glabels
GNOME_VERSION =	3.0.0

REVISION =	3

CATEGORIES =	productivity graphics

SHARED_LIBS +=  glabels-3.0               0.0 # 8.0
SHARED_LIBS +=  glbarcode-3.0             0.0 # 0.0

HOMEPAGE =	http://glabels.sourceforge.net
EXTRACT_SUFX =	.tar.gz

# GPLv3/LGPLv3/MIT      
# Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 com_err croco-0.6
WANTLIB += crypto drm ebook-1.2 edataserver-1.2 expat fontconfig
WANTLIB += freetype gconf-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gssapi gthread-2.0 gtk-3 krb5
WANTLIB += m nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += rsvg-2 smime3 soup-2.4 sqlite3 ssl3 xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += dbus-1 dbus-glib-1 ffi softokn3 stdc++

MODULES =	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS =	graphics/barcode

LIB_DEPENDS =	x11/gtk+3 \
		databases/evolution-data-server \
		x11/gnome/librsvg

RUN_DEPENDS =	misc/shared-mime-info

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE =		Yes

CONFIGURE_STYLE =	gnu

USE_GROFF =		Yes

.include <bsd.port.mk>
