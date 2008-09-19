# $OpenBSD: Makefile,v 1.29 2008/09/19 16:31:23 jasper Exp $

COMMENT=		high-performance CORBA Object Request Broker

GNOME_PROJECT=		ORBit2
GNOME_VERSION=		2.14.15
SHARED_LIBS +=	ORBit-2              3.0      # .1.0
SHARED_LIBS +=	ORBitCosNaming-2     3.0      # .1.0
SHARED_LIBS +=	ORBit-imodule-2      2.1      # .0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/ORBit2/

# LGPL/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcre pthread

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		IDL-2::devel/libIDL \
			glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2
REGRESS_DEPENDS=	:${PKGNAME}:${BUILD_PKGPATH}

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/src/services/name/.libs \
			-L${WRKBUILD}/src/services/imodule/.libs \
			-L${WRKBUILD}/src/orb/.libs -L${LOCALBASE}/lib"

.include <bsd.port.mk>
