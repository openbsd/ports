# $OpenBSD: Makefile,v 1.18 2013/04/13 09:14:06 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	evolution connector for MS Exchange via EWS

GNOME_PROJECT=	evolution-ews
GNOME_VERSION=	3.6.4
REVISION =	0

CATEGORIES=	mail

SHARED_LIBS +=  eews-1.2                  1.0 # 0.0
SHARED_LIBS +=  ewsutils                  1.0 # 0.0
SHARED_LIBS +=  lzx                       1.0 # 0.0

EVO_VERSION=	3.6
SUBST_VARS=	EVO_VERSION

HOMEPAGE=	http://projects.gnome.org/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += com_err crypto db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2
WANTLIB += ecal-1.2 edata-book-1.2 edata-cal-1.2 edataserver-1.2
WANTLIB += edataserverui-3.0 enchant expat ffi fontconfig freetype
WANTLIB += gailutil-3 gck-1 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnome-keyring goa-1.0 gobject-2.0 gpg-error gssapi
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0 harfbuzz
WANTLIB += ical icalss icalvcal icudata icui18n icule icuuc javascriptcoregtk-3.0
WANTLIB += jpeg krb5 ltdl m nspr4 nss3 nssutil3 ogg orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs smime3 softokn3
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 ssl3 stdc++ vorbis
WANTLIB += vorbisfile webkitgtk-3.0 xcb xcb-render xcb-shm xkbfile
WANTLIB += xml2 xslt z

MODULES=	devel/gettext \
		x11/gnome

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
BUILD_DEPENDS +=	mail/evolution,-main
RUN_DEPENDS +=		mail/evolution,-main

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-krb5=/usr \
		--with-krb5-includes=/usr/include/kerberosV

MODGNOME_LDFLAGS=-Wl,-rpath,${TRUEPREFIX}/lib/evolution-data-server-${EVO_VERSION}

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.la
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/modules/*.la

.include <bsd.port.mk>
