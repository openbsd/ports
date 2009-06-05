# $OpenBSD: Makefile,v 1.1.1.1 2009/06/05 22:15:35 jasper Exp $

COMMENT=		C++ interface to libgda

GNOME_PROJECT=		libgdamm
GNOME_VERSION=		3.0.1
SHARED_LIBS +=  gdamm-3.0            0.0      # .10.0
CATEGORIES+=		databases

GDA_MAJOR=		3.0

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += fam glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m
WANTLIB += pcre rpcsvc sigc-2.0 stdc++ xml2 z

BUILD_DEPENDS=		::devel/m4

LIB_DEPENDS=		glibmm-2.4::devel/glib2mm \
			gda-3.0,gdasql-3.0,gda-report-3.0::x11/gnome/libgda

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=		GDA_MAJOR

.include <bsd.port.mk>
