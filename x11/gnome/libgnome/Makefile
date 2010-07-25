# $OpenBSD: Makefile,v 1.37 2010/07/25 08:15:32 ajacoutot Exp $

COMMENT=	libraries for the GNOME project

GNOME_PROJECT=	libgnome
GNOME_VERSION=	2.30.0

REVISION=	0

SHARED_LIBS +=	gnome-2		2402.0   # .3000.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 avahi-client avahi-common popt
WANTLIB += avahi-glib c crypto dbus-1 dbus-glib-1 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pcre pthread
WANTLIB += ssl util xml2 z bonobo-2 bonobo-activation gnomevfs-2

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	::x11/gnome/libbonobo \
		::x11/gnome/vfs2 \
		::devel/popt

MODGCONF2_SCHEMAS_DIR= libgnome

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-esd \
		--disable-gtk-doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/libgnome/

.include <bsd.port.mk>

CONFIGURE_ARGS+= --sysconfdir="${SYSCONFDIR}/gnome"
