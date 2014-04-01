# $OpenBSD: Makefile,v 1.220 2014/04/01 13:21:45 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		integrated email and PIM software for GNOME

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.12.0
REVISION=		1

# NOTE: when EVO_VERSION changes, increment accordingly and bump:
# mail/evolution-ews
# mail/evolution-rss
# x11/gnome/tracker
EVO_VERSION=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		EVO_VERSION

CATEGORIES=		mail

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# # GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB += edataserver-1.2 gailutil-3 gcr-3 gcr-base-3 gdata gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0 gtkspell3-3
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
			databases/evolution-data-server>=${GNOME_VERSION} \
			databases/openldap \
			devel/libnotify \
			security/nss \
			textproc/gtkspell3 \
			www/gtkhtml4 \
			www/webkit,gtk3 \
			x11/gnome/desktop

RUN_DEPENDS=		devel/gsettings-desktop-schemas

# module-text-highlight.so
BUILD_DEPENDS +=	textproc/highlight
RUN_DEPENDS +=		textproc/highlight

# module-bogofilter.so
BUILD_DEPENDS +=	mail/bogofilter
RUN_DEPENDS +=		mail/bogofilter

# module-spamassassin.so
BUILD_DEPENDS +=	mail/p5-Mail-SpamAssassin

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

# without --as-needed, evolution takes 20 minutes (yes, 20!) to start
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,--as-needed

YACC=			bison

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-openldap="${LOCALBASE}" \
			--with-sub-version="OpenBSD Ports"

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

post-install:
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/{modules,plugins}/*.{a,la}
	find ${PREFIX}/share/evolution/${EVO_VERSION}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
