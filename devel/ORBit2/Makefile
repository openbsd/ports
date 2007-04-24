# $OpenBSD: Makefile,v 1.24 2007/04/24 12:41:34 jasper Exp $

COMMENT=		"high-performance CORBA Object Request Broker"

DISTNAME=		ORBit2-2.14.7
SHARED_LIBS +=	ORBit-2              2.0      # .0.0
SHARED_LIBS +=	ORBitCosNaming-2     2.0      # .0.0
SHARED_LIBS +=	ORBit-imodule-2      2.0      # .0.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/ORBit2/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/ORBit2/2.14/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		IDL-2::devel/libIDL \
			glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
