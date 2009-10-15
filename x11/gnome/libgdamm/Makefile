# $OpenBSD: Makefile,v 1.3 2009/10/15 00:49:56 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		C++ interface to libgda

GNOME_PROJECT=		libgdamm
GNOME_VERSION=		3.99.17

SHARED_LIBS +=  gdamm-4.0            0.0      # .11.0

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
WANTLIB += m pcre sigc-2.0 sqlite3 xml2 z

TAR=			${LOCALBASE}/bin/gtar

BUILD_DEPENDS=		::archivers/gtar \
			::devel/m4

LIB_DEPENDS=		glibmm-2.4::devel/glib2mm \
			gda-${GDA_MAJOR}::x11/gnome/libgda

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MAKE=${MAKE_PROGRAM}

SUBST_VARS+=		GDA_MAJOR

.include <bsd.port.mk>
