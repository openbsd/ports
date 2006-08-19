# $OpenBSD: Makefile,v 1.7 2006/08/19 18:58:55 sturm Exp $

COMMENT=		"GStreamer streaming media framework runtime"

DISTNAME=		gstreamer-0.8.11
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		gstcontrol-0.8	5.0 \
			gstreamer-0.8	5.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gstreamer.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gstreamer/0.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:bison-*:devel/bison
LIB_DEPENDS=		glib-2.0.>=200.0,gmodule-2.0.>=200.0,gobject-2.0.>=200.0,gthread-2.0.>=200.0::devel/glib2 \
			popt.>=0.3::devel/popt \
			xml2.>=6::textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
YACC=			bison
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--localstatedir=/var/db
CONFIGURE_ARGS+=	--with-cachedir=/var/db/gstreamer
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
