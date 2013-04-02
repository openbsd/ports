# $OpenBSD: Makefile,v 1.192 2013/04/02 16:16:47 ajacoutot Exp $

BROKEN=			needs webkit>=1.10.0

SHARED_ONLY=		Yes

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.6.4

PKGNAME-main=		${DISTNAME}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}

REVISION-main=		0

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

WANTLIB += camel-1.2 canberra ebook-1.2 ecal-1.2
WANTLIB += edataserver-1.2 edataserverui-3.0 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtkhtml-4.0
WANTLIB += gtkhtml-editor-4.0 ical notify pthread xml2

WANTLIB-main += ${WANTLIB}
WANTLIB-main += atk-1.0 c cairo pango-1.0 pangocairo-1.0
WANTLIB-main += ICE SM cairo-gobject canberra-gtk3 ebackend-1.2
WANTLIB-main += gailutil-3 gdata gmodule-2.0 gnome-desktop-3 goa-1.0
WANTLIB-main += gweather-3 icalvcal ldap-2.4 m nspr4 nss3 plc4 smime3
WANTLIB-main += soup-2.4 gstreamer-0.10 soup-gnome-2.4 webkitgtk-3.0

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += pst

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

# gstreamer1(-plugins-base) is needed for the audio-inline plugin
BUILD_DEPENDS +=	multimedia/gstreamer1/core
RUN_DEPENDS-main +=	multimedia/gstreamer1/plugins-base

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			converters/libpst

# XXX should be a LIB_DEPENDS+WANTLIB but check-lib-depends(1) does not
# work with unversioned solibs (LOCALBASE/lib/evolution/*/*.so).
RUN_DEPENDS-plugins +=	mail/evolution,-main=${GNOME_VERSION}

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -DBOGOFILTER_BINARY="\\\"${LOCALBASE}/bin/bogofilter\\\""
# without --as-needed, evolution takes 20 minutes (yes, 20!) to start
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}:${TRUEPREFIX}/lib \
				-Wl,--as-needed

LIBTOOL_FLAGS=		--tag=disable-static
YACC=			bison
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.9
CONFIGURE_STYLE=	autoconf

CONFIGURE_ARGS=		--disable-static \
			--with-openldap="${LOCALBASE}" \
			--with-sub-version="OpenBSD Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

pre-configure:
	${SUBST_CMD} ${WRKSRC}/modules/spamassassin/evolution-spamassassin.c \
		${WRKSRC}/modules/bogofilter/evolution-bogofilter.c
	perl -pi -e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/data/org.gnome.evolution.spamassassin.gschema.xml.in

post-install:
	rm ${PREFIX}/lib/evolution/${R}/{modules,plugins}/*.la
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
