# $OpenBSD: Makefile,v 1.58 2019/07/12 20:44:03 sthen Exp $

COMMENT=		high-performance CORBA Object Request Broker

GNOME_PROJECT=		ORBit2
GNOME_VERSION=		2.14.19
EXTRACT_SUFX=		.tar.bz2
REVISION=		9

SHARED_LIBS +=  ORBit-2              3.0      # .1.0
SHARED_LIBS +=  ORBitCosNaming-2     3.0      # .1.0
SHARED_LIBS +=  ORBit-imodule-2      2.1      # .0.0

CATEGORIES=		devel

# LGPLv2/GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  IDL-2 c ffi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pcre pthread

MODULES=		x11/gnome

LIB_DEPENDS =		devel/libIDL \
			devel/glib2
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}


CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.67

.include <bsd.port.mk>
