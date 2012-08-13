# $OpenBSD: Makefile,v 1.167 2012/08/13 09:16:42 jasper Exp $

SHARED_ONLY=		Yes

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.4.4

PKGNAME-main=		${DISTNAME}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}

# NOTE: when R changes, increment EVO_VERSION accordingly and bump:
# mail/evolution-ews
# mail/evolution-exchange
# mail/evolution-rss
# x11/gnome/tracker
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

CATEGORIES=		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		7.0

.for _lib in \
gnomecanvas evolution-utils filter email-utils email-engine eutil \
evolution-a11y emiscwidgets etext etimezonedialog etable menus eshell \
essmime evolution-smime emformat eabutil \
evolution-addressbook-importers econtacteditor econtactlisteditor \
composer evolution-mail evolution-mail-importers \
evolution-calendar-importers evolution-calendar evolution-mail-settings
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# # GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm asn1 atk-1.0 c cairo cairo-gobject camel-1.2
WANTLIB += canberra com_err crypto
WANTLIB += db dbus-1 drm ebackend-1.2 ebook-1.2 ecal-1.2
WANTLIB += edataserver-1.2 edataserverui-3.0 enchant
WANTLIB += expat fontconfig freetype gailutil-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gnome-keyring gobject-2.0
WANTLIB += gpg-error gssapi gthread-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0
WANTLIB += ical icalss icalvcal krb5 ffi dbus-glib-1
WANTLIB += m notify nspr4 nss3 nssutil3 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread
WANTLIB += pthread-stubs smime3 softokn3 soup-2.4 sqlite3 ssl3
WANTLIB += xcb xcb-render xcb-shm xml2 z stdc++

WANTLIB-main += ${WANTLIB}
WANTLIB-main += canberra-gtk3 gdata gweather-3 ldap-2.4 ltdl ogg
WANTLIB-main += vorbis vorbisfile goa-1.0 soup-gnome-2.4

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += gstreamer-0.10 pst
WANTLIB-plugins += lib/evolution/${R}/composer
WANTLIB-plugins += lib/evolution/${R}/eabutil
WANTLIB-plugins += lib/evolution/${R}/email-engine
WANTLIB-plugins += lib/evolution/${R}/email-utils
WANTLIB-plugins += lib/evolution/${R}/emformat
WANTLIB-plugins += lib/evolution/${R}/emiscwidgets
WANTLIB-plugins += lib/evolution/${R}/eshell
WANTLIB-plugins += lib/evolution/${R}/etable
WANTLIB-plugins += lib/evolution/${R}/etext
WANTLIB-plugins += lib/evolution/${R}/eutil
WANTLIB-plugins += lib/evolution/${R}/evolution-a11y
WANTLIB-plugins += lib/evolution/${R}/evolution-calendar
WANTLIB-plugins += lib/evolution/${R}/evolution-mail
WANTLIB-plugins += lib/evolution/${R}/filter
WANTLIB-plugins += lib/evolution/${R}/gnomecanvas
WANTLIB-plugins += lib/evolution/${R}/menus

MULTI_PACKAGES=		-main -plugins

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2 \
			devel/dconf

BUILD_DEPENDS=		devel/bison \
			misc/shared-mime-info \
			x11/gnome/icon-theme \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

LIB_DEPENDS=		databases/evolution-data-server>=${GNOME_VERSION} \
			devel/libnotify>=0.7.2 \
			security/nss \
			x11/gnome/desktop \
			www/gtkhtml4>=4.1.91

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			databases/openldap \
			audio/libcanberra,-gtk3

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			x11/gnome/icon-theme \
			devel/gsettings-desktop-schemas

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			mail/evolution,-main=${GNOME_VERSION} \
			converters/libpst>=0.6.54 \
			multimedia/gstreamer-0.10/core
# gstreamer-plugins-good is needed for the audio-inline plugin
RUN_DEPENDS-plugins=	${MODGCONF2_RUN_DEPENDS} \
			multimedia/gstreamer-0.10/plugins-good

LIBTOOL_FLAGS=		--tag=disable-static

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGCONF2_SCHEMAS_DIR=	evolution

YACC=			bison

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.9
CONFIGURE_STYLE=	autoconf
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -DBOGOFILTER_BINARY="\\\"${LOCALBASE}/bin/bogofilter\\\""
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}:${TRUEPREFIX}/lib \
				-Wl,--as-needed

CONFIGURE_ARGS=		--disable-static \
			--enable-plugins=all \
			--disable-nm \
			--disable-connman \
			--disable-mono \
			--disable-python \
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
.for _lib in \
composer eabutil econtacteditor econtactlisteditor email-engine \
email-utils emformat emiscwidgets eshell essmime etable etext \
etimezonedialog eutil evolution-a11y evolution-addressbook-importers \
evolution-calendar-importers evolution-calendar \
evolution-mail-importers evolution-mail-settings evolution-mail \
evolution-smime filter gnomecanvas menus
SHARED_LIBS+=   ${_lib} ${SO_VERSION}
.endfor
REVERT_BZ591436=a11y/Makefile.in \
		addressbook/gui/contact-editor/Makefile.in \
		addressbook/gui/contact-list-editor/Makefile.in \
		addressbook/importers/Makefile.in \
		addressbook/util/Makefile.in \
		calendar/gui/Makefile.in \
		calendar/importers/Makefile.in \
		capplet/settings/Makefile.in \
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

# needed to prevent lazy bindings failures on pthreads(3) functions
post-configure:
	perl -pi -e 's|-Wl,--as-needed||g' \
		${WRKBUILD}/{shell,calendar/alarm-notify,plugins/backup-restore,capplet,capplet/settings}/Makefile

post-install:
	rm ${PREFIX}/lib/evolution/${R}/{modules,plugins}/*.la
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;
# originally designed for MeeGo (https://bugzilla.gnome.org/show_bug.cgi?id=654525)
	rm ${PREFIX}/bin/evolution-settings
	rm ${PREFIX}/share/applications/evolution-settings.desktop

.include <bsd.port.mk>
