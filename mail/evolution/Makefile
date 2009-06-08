# $OpenBSD: Makefile,v 1.76 2009/06/08 16:58:15 ajacoutot Exp $

# XXX TODO: the mail-account-disable plugin is not loaded by default:
# it makes right-clicking on a folder very long (the first time)

COMMENT-main=		integrated email and PIM software for GNOME
COMMENT-plugins=	additionnal plugins for evolution

# NOTE: when major version changes, increment EVO_VERSION accordingly 
# in mail/evolution-plugin-rss/Makefile (and bump).
GNOME_PROJECT=		evolution
GNOME_VERSION=		2.24.5

PKGNAME-main=		${DISTNAME}p11
PKGNAME-plugins=	evolution-plugins-${GNOME_VERSION}p5

CATEGORIES=		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

SO_VERSION=		4.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in eutil econduit evolution-a11y evolution-calendar-a11y \
evolution-widgets-a11y evolution-addressbook-a11y etable etext emiscwidgets \
efilterbar etimezonedialog menus eshell filter essmime evolution-smime eabutil \
evolution-addressbook-importers econtacteditor econtactlisteditor \
evolution-calendar-importers evolution-mail-importers
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 asn1 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 c cairo com_err crypto \
		db dbus-1 dbus-glib-1 enchant expat fontconfig freetype \
		gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeui-2 gnomevfs-2 gnutls gobject-2.0 \
		gpg-error gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		plc4 plds4 png popt pthread sqlite3 ssl ssl3 stdc++ tasn1 \
		util xml2 z

WANTLIB-main=		${WANTLIB} sasl2

WANTLIB-plugins= ${WANTLIB} \
		camel-1.2 camel-provider-1.2 ebackend-1.2 ebook-1.2 \
		ecal-1.2 edataserver-1.2 edataserverui-1.2 gdata-1.2 \
		gdata-google-1.2 gtkhtml-3.14 gtkhtml-editor notify \
		nss3 smime3 softokn3 soup-2.4

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
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			camel-1.2,camel-provider-1.2,ebackend-1.2,ebook-1.2,ecal-1.2,edataserver-1.2,edataserverui-1.2,egroupwise-1.2,exchange-storage-1.2,gdata-1.2,gdata-google-1.2:evolution-data-server->=2.24.3:databases/evolution-data-server \
			lber.>=7,ldap.>=7::databases/openldap \
			notify.>=2::devel/libnotify \
			soup-2.4::devel/libsoup \
			nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss \
			gtkhtml-3.14.>=1.0,gtkhtml-editor::www/gtkhtml3

LIB_DEPENDS-plugins=	${MODGETTEXT_LIB_DEPENDS} \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			lib/evolution/${R}/eabutil.>=4,lib/evolution/${R}/econtacteditor,lib/evolution/${R}/econtactlisteditor,lib/evolution/${R}/efilterbar,lib/evolution/${R}/emiscwidgets,lib/evolution/${R}/eshell,lib/evolution/${R}/essmime,lib/evolution/${R}/etable,lib/evolution/${R}/etext,lib/evolution/${R}/eutil,lib/evolution/${R}/evolution-a11y,lib/evolution/${R}/evolution-mail-importers,lib/evolution/${R}/evolution-widgets-a11y,lib/evolution/${R}/filter,lib/evolution/${R}/menus:${PKGNAME-main}:mail/evolution,-main
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
			--with-krb5-includes=/usr/include/kerberosV
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,-rpath,${TRUEPREFIX}/lib/evolution/${R}/components:${TRUEPREFIX}/lib/evolution/${R}:${LOCALBASE}/lib"

# Only get the first x.y which is needed in the PLIST.
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

SCHEMAS-plugins= 	apps-evolution-attachment-reminder \
			apps-evolution-mail-notification \
			apps-evolution-mail-prompts-checkdefault \
			apps-evolution-template-placeholders \
			apps_evolution_email_custom_header

pre-configure:
	${SUBST_CMD} ${WRKSRC}/plugins/bogo-junk-plugin/bf-junk-filter.c \
		${WRKSRC}/plugins/sa-junk-plugin/em-junk-filter.c

post-install:
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;
	${INSTALL_DATA_DIR} ${PREFIX}/${SCHEMAS_INSTDIR}-plugins/
	for i in ${SCHEMAS-plugins} ; do \
		mv ${PREFIX}/${SCHEMAS_INSTDIR}/$$i.schemas \
		${PREFIX}/${SCHEMAS_INSTDIR}-plugins/ ; done

.include <bsd.port.mk>
