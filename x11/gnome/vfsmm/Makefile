# $OpenBSD: Makefile,v 1.12 2010/07/25 08:15:33 ajacoutot Exp $

COMMENT=		C++ interface to gnome-vfs

GNOME_PROJECT=		gnome-vfsmm
GNOME_VERSION=		2.26.0
REVISION=		0

SHARED_LIBS=		gnomevfsmm-2.6	2.0	# .1.9

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ORBit-2 crypto dbus-1 dbus-glib-1 gconf-2 glib-2.0 \
			gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0 m pcre \
			ssl util z avahi-client avahi-common avahi-glib \
			gconf-2 glibmm-2.4 sigc-2.0 xml2 gnomevfs-2

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		::devel/gconf2 \
			:glib2mm->=2.8:devel/glib2mm \
			:libsigc++->=2,<3:devel/libsigc++-2 \
			::textproc/libxml \
			::x11/gnome/vfs2

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
