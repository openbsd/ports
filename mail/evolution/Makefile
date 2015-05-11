# $OpenBSD: Makefile,v 1.246 2015/05/11 07:42:55 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		integrated email and PIM software for GNOME

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.16.2.1

CATEGORIES=		mail

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += cryptui ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB += edataserver-1.2 edataserverui-1.2 enchant gailutil-3
WANTLIB += gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 gtk-3 gtkspell3-3
WANTLIB += gweather-3 ical icalvcal ldap-2.4 m notify nspr4 nss3
WANTLIB += pango-1.0 pangocairo-1.0 pst pthread secret-1 smime3
WANTLIB += soup-2.4 webkitgtk-3.0 xml2

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/bison \
			devel/gsettings-desktop-schemas

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			converters/libpst \
			databases/evolution-data-server \
			devel/libnotify \
			textproc/gtkspell3 \
			www/webkit,gtk3 \
			x11/gnome/desktop \
			x11/gnome/libcryptui

RUN_DEPENDS=		devel/gsettings-desktop-schemas

# module-text-highlight.so
BUILD_DEPENDS +=	textproc/highlight
RUN_DEPENDS +=		textproc/highlight

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

# without --as-needed, evolution takes ages to start
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,--as-needed

YACC=			bison

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-bogofilter=${LOCALBASE}/bin/bogofilter \
			--with-openldap="${LOCALBASE}" \
			--with-sa-learn=${LOCALBASE}/bin/sa-learn \
			--with-spamassassin=${LOCALBASE}/bin/spamassassin \
			--with-sub-version="OpenBSD Ports"

# requires gnome-autoar
CONFIGURE_ARGS +=	--disable-autoar

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

post-install:
	rm ${PREFIX}/lib/evolution/{modules,plugins}/*.{a,la}

.include <bsd.port.mk>
