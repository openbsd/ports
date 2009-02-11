# $OpenBSD: Makefile,v 1.28 2009/02/11 15:47:50 jasper Exp $

COMMENT=		libraries for the GNOME project

GNOME_PROJECT=		libgnome
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p2

SHARED_LIBS +=	gnome-2              2400.1   # .2400.1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 c crypto dbus-1 dbus-glib-1 \
		gconf-2 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pcre pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gnomevfs-2.>=1799::x11/gnome/vfs2 \
			popt::devel/popt

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgnome \
			--disable-schemas-install \
			--disable-esd \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/libgnome/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
