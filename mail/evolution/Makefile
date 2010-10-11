# $OpenBSD: Makefile,v 1.110 2010/10/11 08:15:27 jasper Exp $

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

GNOME_PROJECT=		evolution
GNOME_VERSION=		2.32.0
REVISION-main=	0
REVISION-plugins=	0

# Only get the first x.y which is needed in the PLIST.
# NOTE: when major version changes, increment EVO_VERSION accordingly 
# and bump:
# mail/evolution-plugin-rss
# mail/evolution-exchange
# x11/gnome/tracker
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

# -plugins depends on the exact version of -main, so whenever -main is
# bumped, -plugins needs a bump too
#PATCH_NUMBER=		p0
PKGNAME-main=		${DISTNAME}${PATCH_NUMBER}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}${PATCH_NUMBER}

CATEGORIES=		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		6.0

.for _lib in \
art_lgpl gnomecanvas eutil evolution-a11y filter emiscwidgets etext \
etimezonedialog etable menus eshell essmime evolution-smime emformat \
eabutil evolution-addressbook-importers econtacteditor \
econtactlisteditor composer evolution-mail evolution-mail-importers \
evolution-calendar-importers evolution-calendar evolution-mail-settings \
evolution-calendar-importer
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender asn1
WANTLIB += atk-1.0 c cairo com_err crypto dbus-1 dbus-glib-1
WANTLIB += eggdbus-1 enchant execinfo expat fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring canberra
WANTLIB += gnutls gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += ical krb5 m nspr4 pango-1.0 camel-1.2 camel-provider-1.2
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs sqlite3 startup-notification-1
WANTLIB += stdc++ tasn1 xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-render-util xml2 z gtkhtml-3.14 gtkhtml-editor-3.14
WANTLIB += gdata proxy soup-gnome-2.4 gdata ebook-1.2
WANTLIB += ecal-1.2 edataserver-1.2 edataserverui-1.2 unique-1.0
WANTLIB += gnome-desktop-2 nss3 smime3 ssl3 notify soup-2.4

WANTLIB-main += ${WANTLIB} vorbisfile canberra-gtk
WANTLIB-main += gweather icalss icalvcal ogg db gtkimageview
WANTLIB-main += icalss icalvcal ldap ltdl ogg pst softokn3
WANTLIB-main += ebackend-1.2 egroupwise-1.2 vorbis

WANTLIB-plugins += ${WANTLIB} gstreamer-0.10
WANTLIB-plugins += lib/evolution/${R}/composer lib/evolution/${R}/emformat
WANTLIB-plugins += lib/evolution/${R}/eshell lib/evolution/${R}/evolution-calendar
WANTLIB-plugins += lib/evolution/${R}/evolution-mail lib/evolution/${R}/emiscwidgets
WANTLIB-plugins += lib/evolution/${R}/eutil

MULTI_PACKAGES=		-main -plugins

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::devel/bison \
			::misc/shared-mime-info \
			::x11/gnome/icon-theme \
			::devel/iso-codes

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			::x11/hicolor-icon-theme \
			::x11/gnome/icon-theme
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			::devel/libunique \
			::converters/libpst \
			::databases/evolution-data-server \
			::databases/openldap \
			::devel/libnotify \
			::devel/libsoup \
			::graphics/gtkimageview \
			::security/nss \
			::x11/gnome/desktop \
			::www/gtkhtml3 \
			::audio/libcanberra

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			::multimedia/gstreamer-0.10/core \
			:${PKGNAME-main}:mail/evolution,-main
# needed for the audio-inline plugin
RUN_DEPENDS-plugins=	::multimedia/gstreamer-0.10/plugins-good

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	evolution

YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-nss=yes \
			--enable-smime=yes \
			--enable-plugins=all \
			--disable-mono \
			--with-openldap="${LOCALBASE}" \
			--with-sub-version=" OpenBSD/Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV \
			--disable-nm \
			--disable-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}:${TRUEPREFIX}/lib" \
			PTHREAD_LIB="-pthread"

FAKE_FLAGS=		autostartdir=${PREFIX}/share/examples/evolution/xdg/autostart

# ltasneededhack in bsd.gnome.mk from FreeBSD ports
USE_LIBTOOL=	gnu
LIBTOOL=	${WRKDIR}/bin/libtool
post-patch:
	sed '/^archive_cmds=/s/-shared/-shared -Wl,--as-needed/ ; \
		/^archive_expsym_cmds=/s/-shared/-shared -Wl,--as-needed/' \
		${LOCALBASE}/bin/libtool > ${WRKDIR}/bin/libtool
	chmod +x ${WRKDIR}/bin/libtool

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/bogo-junk-plugin/bf-junk-filter.c \
		${WRKSRC}/plugins/sa-junk-plugin/em-junk-filter.c

post-install:
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
