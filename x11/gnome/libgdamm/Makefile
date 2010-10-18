# $OpenBSD: Makefile,v 1.9 2010/10/18 13:18:14 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		C++ interface to libgda

GNOME_PROJECT=		libgdamm
GNOME_VERSION=		3.99.21

REVISION=		0

SHARED_LIBS +=  gdamm-4.0            1.0      # 12.0

CATEGORIES+=		databases

GDA_MAJOR=		4.0

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre sigc-2.0 xml2 z glibmm-2.4 gda-${GDA_MAJOR} stdc++
WANTLIB += dbus-1 gcrypt gnome-keyring gpg-error

BUILD_DEPENDS=		::devel/m4

LIB_DEPENDS=		::devel/glib2mm \
			::x11/gnome/libgda

USE_X11=		No

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=		GDA_MAJOR

.include <bsd.port.mk>
