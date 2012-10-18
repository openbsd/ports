# $OpenBSD: Makefile,v 1.180 2012/10/18 13:55:27 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.6.1

PKGNAME-main=		${DISTNAME}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}

REVISION-main=		1
REVISION-plugins=	1

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

SO_VERSION=		8.0

.for _lib in \
composer eabutil econtacteditor econtactlisteditor email-engine \
email-utils emformat emiscwidgets eshell essmime etable etext \
etimezonedialog eutil evolution-a11y evolution-addressbook-importers \
evolution-calendar-importers evolution-calendar \
evolution-mail-importers evolution-mail \
evolution-smime filter gnomecanvas menus
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# # GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
WANTLIB-plugins += lib/evolution/${R}/composer
WANTLIB-plugins += lib/evolution/${R}/email-engine
WANTLIB-plugins += lib/evolution/${R}/email-utils
WANTLIB-plugins += lib/evolution/${R}/emiscwidgets
WANTLIB-plugins += lib/evolution/${R}/eshell
WANTLIB-plugins += lib/evolution/${R}/eutil
WANTLIB-plugins += lib/evolution/${R}/evolution-calendar
WANTLIB-plugins += lib/evolution/${R}/evolution-mail

MULTI_PACKAGES=		-main -plugins

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/bison \
			devel/gsettings-desktop-schemas>=3.6.0 \
			devel/iso-codes \
			x11/gnome/icon-theme

LIB_DEPENDS=		databases/evolution-data-server>=${GNOME_VERSION} \
			devel/libnotify \
			www/gtkhtml4>=3.6.0

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			audio/libcanberra,-gtk3 \
			databases/openldap \
			security/nss \
			www/webkit,gtk3 \
			x11/gnome/desktop>=3.6.0

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/gsettings-desktop-schemas>=3.6.0 \
			x11/gnome/icon-theme

# gstreamer1(-plugins-base) is needed for the audio-inline plugin
BUILD_DEPENDS +=	multimedia/gstreamer1/core
RUN_DEPENDS-main=	multimedia/gstreamer1/plugins-base

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			mail/evolution,-main=${GNOME_VERSION} \
			converters/libpst

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
			--with-sub-version=" OpenBSD/Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

# Revert 160006402248075b95c98e9e34d4538670ba7480
# (Add -avoid-version to LDFLAGS)
# https://bugzilla.gnome.org/show_bug.cgi?id=591436
# This is needed because OpenBSD cannot link to unversioned SOLIBS
# (evolution-rss needs to link to eutil, eshell, email-engine...).
REVERT_BZ591436=a11y/Makefile.in \
		addressbook/gui/contact-editor/Makefile.in \
		addressbook/gui/contact-list-editor/Makefile.in \
		addressbook/importers/Makefile.in \
		addressbook/util/Makefile.in \
		calendar/gui/Makefile.in \
		calendar/importers/Makefile.in \
		composer/Makefile.in \
		e-util/Makefile.in \
		em-format/Makefile.in \
		filter/Makefile.in \
		libemail-engine/Makefile.in \
		libemail-utils/Makefile.in \
		libgnomecanvas/Makefile.in \
		mail/Makefile.in \
		mail/importers/Makefile.in \
		shell/Makefile.in \
		smclient/Makefile.in \
		smime/gui/Makefile.in \
		smime/lib/Makefile.in \
		widgets/e-timezone-dialog/Makefile.in \
		widgets/menus/Makefile.in \
		widgets/misc/Makefile.in \
		widgets/table/Makefile.in \
		widgets/text/Makefile.in

pre-configure:
	for i in ${REVERT_BZ591436}; do perl -pi -e 's,-avoid-version,,g' ${WRKSRC}/$${i}; done
	${SUBST_CMD} ${WRKSRC}/modules/spamassassin/evolution-spamassassin.c \
		${WRKSRC}/modules/bogofilter/evolution-bogofilter.c

post-install:
	rm ${PREFIX}/lib/evolution/${R}/{modules,plugins}/*.la
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
