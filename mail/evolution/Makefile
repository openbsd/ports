# $OpenBSD: Makefile,v 1.230 2014/05/27 10:03:19 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		integrated email and PIM software for GNOME

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.12.2
REVISION=		0

# NOTE: when EVO_VERSION changes, increment accordingly and bump:
# mail/evolution-ews
# mail/evolution-rss
# x11/gnome/tracker
EVO_VERSION=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		EVO_VERSION

CATEGORIES=		mail

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

MASTER_SITES0=		https://git.gnome.org/browse/evolution/patch/?id=
PATCH_DIST_STRIP=	-p1
IDS=			ca274218bd56637a55fbe4456c4090ba87da94f2 \
			a63089164f4d70cac6e07187583d0526f970b7c5 \
			02e30ea2f06ea4ed48f6f7ec5286b3a5c0ce4edc \
			ddadd86f960f37d0243f29e484a96fd1c4d3912c \
			8ad84cf9fb009af8de29864e6ff4018ab58f02a4 \
			9a7be72f6d00befd4985632b0a44d552e15eb39b \
			75d8f1e60130bb35a41c93812565835b3ab91cc2
.for i in ${IDS}
PATCHFILES +=		$i:0
.endfor

# GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
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

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

# without --as-needed, evolution takes ages to start
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
