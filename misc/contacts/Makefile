# $OpenBSD: Makefile,v 1.8 2009/06/08 18:21:46 ajacoutot Exp $

COMMENT=		lightweight addressbook

GNOME_PROJECT=		contacts
GNOME_VERSION=		0.10
CATEGORIES=		misc

HOMEPAGE=		http://pimlico-project.org/contacts.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += asn1 atk-1.0 avahi-client avahi-common avahi-glib bonobo-2
WANTLIB += bonobo-activation c cairo com_err crypto dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnomevfs-2
WANTLIB += gnutls gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png popt pthread smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl ssl3 tasn1 util xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
MODGCONF2_SCHEMAS_DIR=	contacts

LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gnome-vfs \
			--enable-gconf \
			--enable-dbus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
