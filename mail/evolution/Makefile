COMMENT=		integrated email and PIM software for GNOME

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.52.2

CATEGORIES=		mail

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		15.11 # 0.0
.for _lib in \
eabutil econtacteditor econtactlisteditor email-engine essmime \
evolution-addressbook-importers evolution-calendar-importers \
evolution-calendar evolution-mail-composer evolution-mail-formatter \
evolution-mail-importers evolution-mail evolution-shell evolution-smime \
evolution-util gnomecanvas
SHARED_LIBS +=		${_lib} ${SO_VERSION}	 
.endfor

# GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 archive atk-1.0 c cairo cairo-gobject camel-1.2
WANTLIB += canberra canberra-gtk3 cmark ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 ecal-2.0 edata-book-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant-2 gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += geocode-glib-2 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += gnome-autoar-gtk-0 gnome-desktop-3 gobject-2.0 gspell-1
WANTLIB += gtk-3 gweather-4 harfbuzz ical ical-glib icalss icalvcal
WANTLIB += iconv intl javascriptcoregtk-4.1 json-glib-1.0 lber
WANTLIB += ldap m notify nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0
WANTLIB += plc4 plds4 pst pthread secret-1 smime3 soup-3.0 sqlite3
WANTLIB += ssl3 webkit2gtk-4.1 xml2 ytnef

MODULES=		devel/cmake \
			devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		converters/libpst \
			converters/libytnef \
			databases/evolution-data-server \
			devel/libnotify \
			geo/geocode-glib \
			textproc/cmark \
			textproc/gspell \
			x11/gnome/autoar \
			x11/gnome/desktop

RUN_DEPENDS=		devel/gsettings-desktop-schemas

# module-text-highlight.so
BUILD_DEPENDS +=	textproc/highlight
RUN_DEPENDS +=		textproc/highlight

MODGNOME_LDFLAGS=	-L${X11BASE}/lib
CFLAGS=			-I${X11BASE}/include -I${LOCALBASE}/include
MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_ARGS=		-DWITH_BOGOFILTER="${LOCALBASE}/bin/bogofilter" \
			-DWITH_SA_LEARN="${LOCALBASE}/bin/sa-learn" \
			-DWITH_SPAMASSASSIN="${LOCALBASE}/bin/spamassassin" \
			-DWITH_OPENLDAP=${LOCALBASE} \
			-DVERSION_SUBSTRING=" (OpenBSD Ports)" \
			-DMAN_INSTALL_DIR="${PREFIX}/man" \
			-DWITH_ENCHANT_VERSION=2 \
			-DWITH_GWEATHER4=ON

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
