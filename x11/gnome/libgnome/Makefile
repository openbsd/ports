# $OpenBSD: Makefile,v 1.31 2009/06/08 17:59:15 ajacoutot Exp $

COMMENT=		libraries for the GNOME project

GNOME_PROJECT=		libgnome
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p4

SHARED_LIBS +=	gnome-2              2400.1   # .2400.1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=        ORBit-2 ORBitCosNaming-2 avahi-client avahi-common \
		avahi-glib c crypto dbus-1 dbus-glib-1 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pcre pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gnomevfs-2.>=1799::x11/gnome/vfs2 \
			popt::devel/popt

MODGCONF2_SCHEMAS_DIR=	libgnome

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-esd \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/libgnome/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
