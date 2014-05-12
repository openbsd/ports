# $OpenBSD: Makefile,v 1.47 2014/05/12 13:40:56 ajacoutot Exp $

EVO_VERSION=		3.12
SUBST_VARS +=		EVO_VERSION

SHARED_ONLY=		Yes

COMMENT=		evolution connector for MS Exchange via EWS

GNOME_PROJECT=		evolution-ews
GNOME_VERSION=		3.12.2

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
WANTLIB += db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += ecal-1.2 edata-book-1.2 edata-cal-1.2 edataserver-1.2
WANTLIB += enchant expat ffi fontconfig freetype gailutil-3 gck-1
WANTLIB += gcr-3 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0 geoclue
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0
WANTLIB += gtkspell3-3 harfbuzz harfbuzz-icu ical icalss icalvcal
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg ltdl
WANTLIB += m mspack nspr4 nss3 nssutil3 ogg orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs secret-1 smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 stdc++ vorbis vorbisfile webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
BUILD_DEPENDS +=	mail/evolution
RUN_DEPENDS +=		mail/evolution

LIB_DEPENDS=		archivers/libmspack

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.{a,la}
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/modules/*.{a,la}

.include <bsd.port.mk>
