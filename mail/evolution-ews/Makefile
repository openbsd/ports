# $OpenBSD: Makefile,v 1.79 2016/10/31 12:27:15 ajacoutot Exp $

COMMENT=		evolution connector for MS Exchange via EWS

GNOME_PROJECT=		evolution-ews
GNOME_VERSION=		3.22.1

CATEGORIES=		mail

SHARED_LIBS +=  eews-1.2             1.0      # unknown
SHARED_LIBS +=  ewsutils             1.0      # unknown

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm archive
WANTLIB += atk-1.0 atk-bridge-2.0 atspi bz2 cairo cairo-gobject
WANTLIB += camel-1.2 canberra canberra-gtk3 crypto cryptui db
WANTLIB += dbus-1 dbus-glib-1 drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2
WANTLIB += ecal-1.2 edata-book-1.2 edata-cal-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant epoxy estdc++ expat ffi fontconfig
WANTLIB += freetype gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gmp gnome-autoar-0 gnome-autoar-gtk-0 gnome-desktop-3
WANTLIB += gnutls gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtkspell3-3
WANTLIB += harfbuzz harfbuzz-icu hogweed hyphen ical icalss icalvcal
WANTLIB += iconv icudata icui18n icuuc idn intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 ltdl lz4 lzma lzo2 m mspack nettle
WANTLIB += notify nspr4 nss3 nssutil3 ogg orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs secret-1 smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 stdc++ tasn1 vorbis vorbisfile
WANTLIB += webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z
WANTLIB += lib/evolution/eabutil
WANTLIB += lib/evolution/econtacteditor
WANTLIB += lib/evolution/econtactlisteditor
WANTLIB += lib/evolution/email-engine
WANTLIB += lib/evolution/essmime
WANTLIB += lib/evolution/evolution-calendar-importers
WANTLIB += lib/evolution/evolution-calendar
WANTLIB += lib/evolution/evolution-mail-composer
WANTLIB += lib/evolution/evolution-mail-formatter
WANTLIB += lib/evolution/evolution-mail
WANTLIB += lib/evolution/evolution-shell
WANTLIB += lib/evolution/evolution-smime
WANTLIB += lib/evolution/evolution-util
WANTLIB += lib/evolution/gnomecanvas

MODULES=		x11/gnome

LIB_DEPENDS=		archivers/libmspack \
			mail/evolution

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.{a,la}
	rm ${PREFIX}/lib/evolution/modules/*.{a,la}

.include <bsd.port.mk>
