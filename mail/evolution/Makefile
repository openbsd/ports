# $OpenBSD: Makefile,v 1.144 2011/10/16 19:03:34 ajacoutot Exp $

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

GNOME_PROJECT=		evolution
GNOME_VERSION=		3.2.1

PKGNAME-main=		${DISTNAME}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}

REVISION-main=		0
REVISION-plugins=	0

# Only get the first x.y which is needed in the PLIST.
# NOTE: when major version changes, increment EVO_VERSION accordingly 
# and bump:
# mail/evolution-rss
# mail/evolution-exchange
# x11/gnome/tracker
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

CATEGORIES=		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		6.0

.for _lib in \
gnomecanvas eutil evolution-a11y filter emiscwidgets etext \
etimezonedialog etable menus eshell essmime evolution-smime emformat \
eabutil evolution-addressbook-importers econtacteditor \
econtactlisteditor composer evolution-mail evolution-mail-importers \
evolution-calendar evolution-mail-settings evolution-calendar-importers
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# # GPLv2+ - LGPLv2+ - OpenLDAP license - GFDL 1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm asn1 atk-1.0 c cairo cairo-gobject camel-1.2
WANTLIB += camel-provider-1.2 canberra com_err crypto
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
WANTLIB-main += canberra-gtk3 gdata gweather-3 ldap-2.4 ltdl ogg pst
WANTLIB-main += vorbis vorbisfile goa-1.0

WANTLIB-plugins += ${WANTLIB}
WANTLIB-plugins += gstreamer-0.10
WANTLIB-plugins += lib/evolution/${R}/eabutil
WANTLIB-plugins += lib/evolution/${R}/composer
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
			devel/gconf2

BUILD_DEPENDS=		devel/bison \
			misc/shared-mime-info \
			x11/gnome/icon-theme \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			x11/hicolor-icon-theme \
			x11/gnome/icon-theme \
			${MODGNOME_RUN_DEPENDS_yelp} \
			devel/gsettings-desktop-schemas
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			converters/libpst \
			databases/evolution-data-server>=3.2.1 \
			databases/openldap \
			devel/libnotify>=0.7.2 \
			security/nss \
			x11/gnome/desktop \
			www/gtkhtml4>=4.1.91 \
			audio/libcanberra,-gtk3

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			mail/evolution,-main>=${GNOME_VERSION} \
			multimedia/gstreamer-0.10/core
# needed for the audio-inline plugin
RUN_DEPENDS-plugins=	${MODGCONF2_RUN_DEPENDS} \
			multimedia/gstreamer-0.10/plugins-good

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGCONF2_SCHEMAS_DIR=	evolution

YACC=			bison

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.9
CONFIGURE_STYLE=	autoconf
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -DBOGOFILTER_BINARY="\\\"${LOCALBASE}/bin/bogofilter\\\""
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}:${TRUEPREFIX}/lib \
				-Wl,--as-needed

CONFIGURE_ARGS=		--enable-plugins=all \
			--disable-nm \
			--disable-sens \
			--disable-connman \
			--disable-mono \
			--disable-python \
			--disable-contact-maps \
			--without-clutter \
			--with-openldap="${LOCALBASE}" \
			--with-sub-version=" OpenBSD/Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV

# no gtkimageview release for gtk+3
CONFIGURE_ARGS+=	--disable-image-inline

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

pre-configure:
	${SUBST_CMD} ${WRKSRC}/modules/spamassassin/evolution-spamassassin.c \
		${WRKSRC}/modules/bogofilter/evolution-bogofilter.c

# needed to prevent lazy bindings failures on pthreads(3) functions
post-configure:
	perl -pi -e 's|-Wl,--as-needed||g' \
		${WRKBUILD}/{shell,calendar/gui/alarm-notify,plugins/backup-restore,capplet,capplet/settings}/Makefile

post-install:
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;
# originally designed for MeeGo (https://bugzilla.gnome.org/show_bug.cgi?id=654525)
	rm ${PREFIX}/share/applications/evolution-settings.desktop

.include <bsd.port.mk>
