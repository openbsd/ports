# $OpenBSD: Makefile,v 1.3 2007/07/17 16:49:02 jasper Exp $

COMMENT=		C++ interface to GConf

GNOME_PROJECT=		gconfmm
GNOME_VERSION=		2.18.0
SHARED_LIBS +=		gconfmm-2.6	0.0	# .1.6
CATEGORIES=		devel

HOMEPAGE=		http://www.gtkmm.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		ORBit-2::devel/ORBit2 \
			gconf-2.>=5::devel/gconf2 \
			sigc-2.0:libsigc++-2.*:devel/libsigc++-2 \
			glibmm-2.4:glib2mm->=2.8:devel/glib2mm

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static

.include <bsd.port.mk>
