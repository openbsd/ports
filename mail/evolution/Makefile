# $OpenBSD: Makefile,v 1.54 2009/01/12 16:13:42 jasper Exp $

COMMENT=		integrated email and PIM software for GNOME

# NOTE: when major version changes, increment EVO_VERSION accordingly 
# in mail/evolution-plugin-rss/Makefile (and bump).
GNOME_PROJECT=		evolution
GNOME_VERSION=		2.24.3
CATEGORIES=    		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

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
		Xrender art_lgpl_2 asn1 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c cairo com_err crypto \
		db dbus-1 dbus-glib-1 enchant esd expat fontconfig freetype \
		gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gssapi \
		gthread-2.0 gtk-x11-2.0 jpeg krb5 m nspr4 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 \
		png popt pthread sasl2 sqlite3 ssl ssl3 stdc++ util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/bison \
			::textproc/rarian \
			::x11/gnome/doc-utils \
			::misc/shared-mime-info
RUN_DEPENDS=		::devel/desktop-file-utils \
			::textproc/rarian \
			::x11/hicolor-icon-theme
LIB_DEPENDS=		camel-1.2,camel-provider-1.2,ebackend-1.2,ebook-1.2,ecal-1.2,edataserver-1.2,edataserverui-1.2,egroupwise-1.2,exchange-storage-1.2,gdata-1.2,gdata-google-1.2::databases/evolution-data-server \
			lber.>=7,ldap.>=7::databases/openldap \
			notify.>=2::devel/libnotify \
			soup-2.4::devel/libsoup \
			nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss \
			gtkhtml-3.14.>=1.0,gtkhtml-editor::www/gtkhtml3

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
YACC=			bison
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution \
			--disable-pilot-conduits \
			--enable-nss=yes \
			--enable-smime=yes \
			--enable-default-binary \
			--enable-exchange \
			--enable-plugins=base \
			--disable-mono \
			--with-openldap="${LOCALBASE}" \
			--with-sub-version=" OpenBSD/Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,-rpath,${LOCALBASE}/lib/evolution/${R}/components:${LOCALBASE}/lib/evolution/${R}:${LOCALBASE}/lib -Z"

# XXX
#R=			${GNOME_VERSION:R}
R=			2.24
SUBST_VARS=		R

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
