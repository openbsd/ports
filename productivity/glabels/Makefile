# $OpenBSD: Makefile,v 1.30 2013/03/11 11:37:54 espie Exp $

COMMENT =	labels and business card designer

GNOME_PROJECT =	glabels
GNOME_VERSION =	3.0.1

REVISION =	0

CATEGORIES =	productivity graphics

SHARED_LIBS +=  glabels-3.0               0.0 # 8.0
SHARED_LIBS +=  glbarcode-3.0             0.0 # 0.0

HOMEPAGE =	http://glabels.sourceforge.net

# GPLv3/LGPLv3/MIT      
# Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 atk-1.0 c cairo
WANTLIB += cairo-gobject camel-1.2 com_err croco-0.6 crypto dbus-1
WANTLIB += drm ebook-1.2 edataserver-1.2 expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += gtk-3 krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += qrencode rsvg-2 smime3 softokn3 soup-2.4 sqlite3 ssl3
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z zint
WANTLIB += ICE SM atk-bridge-2.0 atspi gck-1 gcr-base-3 gcrypt
WANTLIB += gnome-keyring gpg-error harfbuzz icudata icule icuuc
WANTLIB += nssutil3 p11-kit


MODULES =	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS =	graphics/barcode

LIB_DEPENDS =	databases/evolution-data-server \
		graphics/libqrencode \
		graphics/zint \
		x11/gnome/librsvg \
		x11/gtk+3

RUN_DEPENDS =	misc/shared-mime-info

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_STYLE =	gnu

USE_GROFF =		Yes

.include <bsd.port.mk>
