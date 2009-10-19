# $OpenBSD: Makefile,v 1.88 2009/10/19 20:31:23 jasper Exp $

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

# NOTE: when major version changes, increment EVO_VERSION accordingly 
# in mail/evolution-plugin-rss/Makefile (and bump).
GNOME_PROJECT=		evolution
GNOME_VERSION=		2.28.1

# -plugins depends on the exact version of -main, so whenever -main is
# bumped, -plugins needs a bump too
PKGNAME-main=		${DISTNAME}
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}

CATEGORIES=		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		5.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in eutil econduit evolution-a11y evolution-calendar-a11y \
evolution-widgets-a11y evolution-addressbook-a11y etable etext emiscwidgets \
efilterbar etimezonedialog menus eshell filter essmime evolution-smime eabutil \
evolution-addressbook-importers econtacteditor econtactlisteditor \
evolution-calendar-importers evolution-mail-importers evolution-cal-shared \
evolution-mail-shared
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo com_err crypto dbus-1 dbus-glib-1 enchant execinfo
WANTLIB += expat fontconfig freetype gailutil gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gnutls
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += ical krb5 m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png popt pthread pthread-stubs
WANTLIB += sqlite3 ssl startup-notification-1 stdc++ tasn1 util
WANTLIB += xcb xcb-atom xcb-aux xcb-event xml2 z

WANTLIB-main= ${WANTLIB}
WANTLIB-main += db icalss icalvcal

WANTLIB-plugins= ${WANTLIB}
WANTLIB-plugins += camel-1.2 camel-provider-1.2 ebook-1.2 ecal-1.2 edataserver-1.2
WANTLIB-plugins += edataserverui-1.2 gnome-desktop-2 gnomeui-2 gtkhtml-3.14 
WANTLIB-plugins += gtkhtml-editor nss3 smime3 softokn3 soup-2.4 ssl3

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
			pst::converters/libpst \
			camel-1.2,camel-provider-1.2,ebackend-1.2,ebook-1.2,ecal-1.2,edataserver-1.2,edataserverui-1.2,egroupwise-1.2,gdata-1.2,gdata-google-1.2:evolution-data-server->=2.24.3:databases/evolution-data-server \
			ldap.>=7::databases/openldap \
			notify.>=2::devel/libnotify \
			soup-2.4::devel/libsoup \
			nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss \
			gnome-desktop-2::x11/gnome/desktop \
			gnomeui-2::x11/gnome/libgnomeui \
			gtkhtml-3.14.>=1.0,gtkhtml-editor::www/gtkhtml3

LIB_DEPENDS-plugins=	${LIB_DEPENDS} \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			lib/evolution/${R}/emiscwidgets,lib/evolution/${R}/eutil,lib/evolution/${R}/evolution-mail-shared:${PKGNAME-main}:mail/evolution,-main
# needed for the audio-inline plugin
RUN_DEPENDS-plugins=	::multimedia/gstreamer-0.10/plugins-good

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	evolution

YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-pilot-conduits \
			--enable-nss=yes \
			--enable-smime=yes \
			--enable-default-binary \
			--enable-exchange \
			--enable-plugins=all \
			--disable-mono \
			--with-openldap="${LOCALBASE}" \
			--with-sub-version=" OpenBSD/Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV \
			--disable-nm \
			--disable-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}/components:${TRUEPREFIX}/lib/evolution/${R}:${TRUEPREFIX}/lib"

# Only get the first x.y which is needed in the PLIST.
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

# XXX ltasneededhack in bsd.gnome.mk from FreeBSD ports
# (+patch-plugins_exchange-operations_Makefile_in)
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
