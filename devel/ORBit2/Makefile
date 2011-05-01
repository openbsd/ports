# $OpenBSD: Makefile,v 1.42 2011/05/01 11:34:17 ajacoutot Exp $

COMMENT=		high-performance CORBA Object Request Broker

GNOME_PROJECT=		ORBit2
GNOME_VERSION=		2.14.19

SHARED_LIBS +=  ORBit-2              3.0      # .1.0
SHARED_LIBS +=  ORBitCosNaming-2     3.0      # .1.0
SHARED_LIBS +=  ORBit-imodule-2      2.1      # .0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/ORBit2/

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcre pthread

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS =		devel/libIDL \
			devel/glib2
WANTLIB +=		IDL-2 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}


CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.67
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
