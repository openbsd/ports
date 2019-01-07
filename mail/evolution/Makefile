# $OpenBSD: Makefile,v 1.300 2019/01/07 14:52:50 ajacoutot Exp $

COMMENT=		integrated email and PIM software for GNOME

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.30.4

CATEGORIES=		mail

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		15.0 # 0.0
.for _lib in \
eabutil econtacteditor econtactlisteditor email-engine essmime \
evolution-addressbook-importers evolution-calendar-importers \
evolution-calendar evolution-mail-composer evolution-mail-formatter \
evolution-mail-importers evolution-mail evolution-shell evolution-smime \
evolution-util gnomecanvas
SHARED_LIBS +=		${_lib} ${SO_VERSION}	 
.endfor

# GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += ebook-1.2 ebook-contacts-1.2 ecal-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant gailutil-3 gcr-base-3 gcr-ui-3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-autoar-0
WANTLIB += gnome-autoar-gtk-0 gnome-desktop-3 gobject-2.0 gtk-3
WANTLIB += gtkspell3-3 gweather-3 ical icalvcal intl ldap-2.4
WANTLIB += m notify nspr4 nss3 pango-1.0 pangocairo-1.0 pst secret-1
WANTLIB += smime3 soup-2.4 sqlite3 webkit2gtk-4.0 xml2 ytnef

MODULES=		devel/cmake \
			devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		converters/libpst \
			converters/libytnef \
			databases/evolution-data-server \
			devel/libnotify \
			textproc/enchant \
			textproc/gtkspell3 \
			x11/gnome/autoar \
			x11/gnome/desktop

RUN_DEPENDS=		devel/gsettings-desktop-schemas

# module-text-highlight.so
BUILD_DEPENDS +=	textproc/highlight
RUN_DEPENDS +=		textproc/highlight

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

# without --as-needed, evolution takes ages to start
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,--as-needed

CONFIGURE_ARGS=		-DWITH_BOGOFILTER="${LOCALBASE}/bin/bogofilter" \
			-DWITH_SA_LEARN="${LOCALBASE}/bin/sa-learn" \
			-DWITH_SPAMASSASSIN="${LOCALBASE}/bin/spamassassin" \
			-DWITH_OPENLDAP=${LOCALBASE} \
			-DVERSION_SUBSTRING=" (OpenBSD Ports)" \
			-DCMAKE_C_FLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
