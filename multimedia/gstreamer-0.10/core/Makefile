# $OpenBSD: Makefile,v 1.5 2007/10/08 08:22:41 steven Exp $

COMMENT-main=		streaming media framework - core
COMMENT-frontend=	streaming media framework - frontend commands

V=			0.10.12

PKGNAME-main=		gstreamer-$Vp0
PKGNAME-frontend=	gstreamer-frontend-$Vp0

DISTNAME=		gstreamer-$V

SHARED_LIBS +=	gstreamer-0.10        0.1     # .11.0
SHARED_LIBS +=	gstbase-0.10          0.1     # .11.0
SHARED_LIBS +=	gstcontroller-0.10    0.0     # .11.0
SHARED_LIBS +=	gstdataprotocol-0.10  0.0     # .11.0
SHARED_LIBS +=	gstnet-0.10           0.0     # .11.0

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

MULTI_PACKAGES=		-main -frontend
WANTLIB=		c m pthread z
MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0.>=200.0,gmodule-2.0.>=200.0,gobject-2.0.>=200.0,gthread-2.0.>=200.0::devel/glib2 \
			xml2.>=6::textproc/libxml

CONFIGURE_ARGS=		--disable-gst-debug

.include <bsd.port.mk>
