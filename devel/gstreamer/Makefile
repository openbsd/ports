# $OpenBSD: Makefile,v 1.1.1.1 2004/12/22 06:06:56 marcm Exp $

COMMENT=		"GStreamer streaming media framework runtime"

DISTNAME=		gstreamer-0.8.7
CATEGORIES=		devel

HOMEPAGE=		http://www.gstreamer.net/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

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
LIB_DEPENDS=		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0::devel/glib2 \
			popt.0.3::devel/popt \
			xml2.6::textproc/libxml

USE_GMAKE=		Yes
YACC=			bison
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--localstatedir=/var/db
CONFIGURE_ARGS+=	--with-cachedir=/var/db/gstreamer
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
