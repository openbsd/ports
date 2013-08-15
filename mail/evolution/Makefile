# $OpenBSD: Makefile,v 1.204 2013/08/15 16:07:27 ajacoutot Exp $

# XXX textproc/highlight

SHARED_ONLY=		Yes

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.8.5

PKGNAME-main=		${DISTNAME}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}

REVISION-main=		1

# NOTE: when R changes, increment EVO_VERSION accordingly and bump:
# mail/evolution-ews
# mail/evolution-rss
# x11/gnome/tracker
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

CATEGORIES=		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# # GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += ${WANTLIB}
WANTLIB-main += atk-1.0 c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB-main += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB-main += edataserver-1.2 gailutil-3 gdata gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 goa-1.0
WANTLIB-main += gobject-2.0 gstreamer-1.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0
WANTLIB-main += gweather-3 ical icalvcal ldap-2.4 m notify nspr4 nss3
WANTLIB-main += pango-1.0 pangocairo-1.0 plc4 pthread secret-1 smime3
WANTLIB-main += soup-2.4 soup-gnome-2.4 webkitgtk-3.0 xml2

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += camel-1.2 canberra ebook-1.2 ebook-contacts-1.2 ecal-1.2
WANTLIB-plugins += edataserver-1.2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-plugins += gobject-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0 ical
WANTLIB-plugins += notify pst pthread xml2

MULTI_PACKAGES=		-main -plugins

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/bison \
			devel/gsettings-desktop-schemas \
			devel/iso-codes

LIB_DEPENDS=		databases/evolution-data-server>=${GNOME_VERSION} \
			devel/libnotify \
			www/gtkhtml4

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			audio/libcanberra,-gtk3 \
			databases/openldap \
			security/nss \
			www/webkit,gtk3 \
			x11/gnome/desktop

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/gsettings-desktop-schemas

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			converters/libpst

RUN_DEPENDS-plugins=	${MODDCONF_RUN_DEPENDS}

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
RUN_DEPENDS-plugins +=	mail/evolution,-main=${GNOME_VERSION}

# module-text-highlight.so
BUILD_DEPENDS +=	textproc/highlight
RUN_DEPENDS-main +=	textproc/highlight

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_CPPFLAGS=	-I${X11BASE}/include \
			$$(krb5-config --cflags) \
			-DBOGOFILTER_BINARY="\\\"${LOCALBASE}/bin/bogofilter\\\""
# without --as-needed, evolution takes 20 minutes (yes, 20!) to start
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}:${TRUEPREFIX}/lib \
				-Wl,--as-needed

LIBTOOL_FLAGS=		--tag=disable-static
YACC=			bison

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		BOGOFILTER=${LOCALBASE}/bin/bogofilter \
			SPAMASSASSIN=${LOCALBASE}/bin/spamassassin \
			SA_LEARN=${LOCALBASE}/bin/sa-learn

CONFIGURE_ARGS=		--disable-static \
			--with-openldap="${LOCALBASE}" \
			--with-sub-version="OpenBSD Ports" \
			--with-krb5

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

post-install:
	rm ${PREFIX}/lib/evolution/${R}/{modules,plugins}/*.la
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
