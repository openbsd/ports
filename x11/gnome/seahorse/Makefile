# $OpenBSD: Makefile,v 1.4 2008/01/17 18:50:13 jasper Exp $

COMMENT=		manage encryption keys

GNOME_PROJECT=		seahorse
GNOME_VERSION=		2.20.1
PKGNAME=		${DISTNAME}p2
SHARED_LIBS +=	cryptui              0.0      # .0.0
CATEGORIES=		security

HOMEPAGE=		http://www.gnome.org/projects/seahorse/

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 asn1 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c cairo com_err crypto \
		dbus-1 dbus-glib-1 esd expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeprint-2-2 gnomeprintui-2-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0 \
		gtksourceview-2.0 jpeg krb5 m nspr4 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre plc4 plds4 png popt pthread sasl2 \
		ssl util xml2 z

BUILD_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::textproc/scrollkeeper \
			::www/epiphany \
			::x11/gnome/doc-utils \
			::x11/gnome/gedit
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::textproc/scrollkeeper \
			::www/epiphany \
			::x11/gnome/gedit \
			::x11/gnome/yelp
LIB_DEPENDS=		lber,ldap::databases/openldap \
			notify::devel/libnotify \
			soup-2.2::devel/libsoup \
			xulrunner/gtkembedmoz,xulrunner/xpcom::devel/xulrunner,-devel \
			gpgme::security/gpgme \
			nautilus-extension::x11/gnome/nautilus \
			panel-applet-2::x11/gnome/panel

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
DESKTOP_FILES=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/seahorse \
			--with-gecko=xulrunner \
			--enable-applet \
			--enable-epiphany \
			--enable-gedit \
			--enable-hkp \
			--enable-ldap \
			--enable-nautilus \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-sharing
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
