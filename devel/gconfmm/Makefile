# $OpenBSD: Makefile,v 1.7 2009/10/24 10:23:41 ajacoutot Exp $

COMMENT=		C++ interface to GConf

GNOME_PROJECT=		gconfmm
GNOME_VERSION=		2.28.0

SHARED_LIBS +=		gconfmm-2.6	0.1	# .1.6

CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 pcre

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		ORBit-2::devel/ORBit2 \
			gconf-2.>=5::devel/gconf2 \
			sigc-2.0:libsigc++->=2,<3:devel/libsigc++-2 \
			glibmm-2.4:glib2mm->=2.8:devel/glib2mm

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
