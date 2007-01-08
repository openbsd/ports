# $OpenBSD: Makefile.inc,v 1.1.1.1 2007/01/08 17:37:27 espie Exp $

CATEGORIES?=	multimedia devel

HOMEPAGE?=	http://www.gstreamer.net/

# LGPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITE_GST=	http://gstreamer.freedesktop.org/src/
EXTRACT_SUFX?=		.tar.bz2
VERSION=		0.10
SUBST_VARS+=		VERSION

USE_GMAKE?=		Yes
USE_LIBTOOL?=		Yes

MODULES+=		lang/python

BUILD_DEPENDS+=		:bison-*:devel/bison

AUTOCONF_VERSION?=	2.60
CONFIGURE_STYLE?=	autoconf

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--localstatedir=/var/db \
			--with-cachedir=/var/db/gstreamer-${VERSION} \
			--disable-debug \
			--disable-valgrind \
#			--enable-gtk-doc

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MODPY_VERSION=${MODPY_VERSION}
