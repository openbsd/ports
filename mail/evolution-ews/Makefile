# $OpenBSD: Makefile,v 1.60 2015/04/13 07:56:39 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		evolution connector for MS Exchange via EWS

GNOME_PROJECT=		evolution-ews
GNOME_VERSION=		3.16.1

CATEGORIES=		mail

SHARED_LIBS +=  eews-1.2             1.0      # unknown
SHARED_LIBS +=  ewsutils             1.0      # unknown

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += cryptui db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 ecal-1.2 edata-book-1.2 edata-cal-1.2
WANTLIB += edataserver-1.2 edataserverui-1.2 enchant epoxy expat
WANTLIB += ffi fontconfig freetype gailutil-3 gbm gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkspell3-3 harfbuzz harfbuzz-icu ical icalss icalvcal
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg ltdl
WANTLIB += lzma m mspack nspr4 nss3 nssutil3 ogg orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs secret-1 smime3
WANTLIB += softokn3 soup-2.4 sqlite3 ssl3 stdc++ vorbis vorbisfile
WANTLIB += webkitgtk-3.0 webp xcb xcb-render xcb-shm xml2 xslt
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*.so).
BUILD_DEPENDS +=	mail/evolution
RUN_DEPENDS +=		mail/evolution

LIB_DEPENDS=		archivers/libmspack

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.{a,la}
	rm ${PREFIX}/lib/evolution/modules/*.{a,la}

.include <bsd.port.mk>
