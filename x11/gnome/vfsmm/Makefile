# $OpenBSD: Makefile,v 1.10 2009/06/25 00:38:37 sthen Exp $

COMMENT=		C++ interface to gnome-vfs

GNOME_PROJECT=		gnome-vfsmm
GNOME_VERSION=		2.24.0
SHARED_LIBS=		gnomevfsmm-2.6	1.0	# .1.9
PKGNAME=		${DISTNAME}p3

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ORBit-2 crypto dbus-1 dbus-glib-1 gconf-2 glib-2.0 \
			gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0 m pcre \
			ssl util z avahi-client avahi-common avahi-glib

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gconf-2.>=5::devel/gconf2 \
			glibmm-2.4:glib2mm->=2.8:devel/glib2mm \
			sigc-2.0:libsigc++->=2,<3:devel/libsigc++-2 \
			xml2.>=9::textproc/libxml \
			gnomevfs-2::x11/gnome/vfs2

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
