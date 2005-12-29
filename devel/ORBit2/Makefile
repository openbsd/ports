# $OpenBSD: Makefile,v 1.16 2005/12/29 13:56:07 bernd Exp $

COMMENT=		"high-performance CORBA Object Request Broker"

DISTNAME=		ORBit2-2.12.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://www.labs.redhat.com/orbit/

SHARED_LIBS=		ORBit-2 0.0 ORBit-imodule-2 0.0 ORBitCosNaming-2 0.0
MODGNU_SHARED_LIBS=	ORBit-2 '' ORBit-imodule-2 '' ORBitCosNaming-2 ''
LIBORBit-2_ALIAS=		ORBit_2
LIBORBit-imodule-2_ALIAS=	ORBit_imodule_2
LIBORBitCosNaming-2_ALIAS=	ORBitCosNaming_2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c glib-2.0.0.0 m pthread

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/ORBit2/2.12/}
EXTRACT_SUFX=		.tar.bz2

# fix for Alpha
.if (${MACHINE_ARCH} == "alpha")
PATCH_LIST=		patch-* sup-alpha-*
.endif

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig->=0.14.0:devel/pkgconfig
LIB_DEPENDS=		IDL-2::devel/libIDL \
			gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
			popt::devel/popt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-indent
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# XXX you can't compile this with an existing ORBit installed...
# LDFLAGS="-L${LOCALBASE}/lib" messes it up but is needed to detect popt

.include <bsd.port.mk>
