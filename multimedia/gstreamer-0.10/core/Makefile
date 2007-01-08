# $OpenBSD: Makefile,v 1.1 2007/01/08 17:39:53 espie Exp $

COMMENT-main=		"streaming media framework - core"
COMMENT-frontend=	"streaming media framework - frontend commands"

PKGNAME-frontend=	gstreamer-frontend-0.10.11

DISTNAME=		gstreamer-0.10.11

SHARED_LIBS +=	gstreamer-0.10        0.0     # .10.0
SHARED_LIBS +=	gstbase-0.10          0.0     # .10.0
SHARED_LIBS +=	gstcontroller-0.10    0.0     # .10.0
SHARED_LIBS +=	gstdataprotocol-0.10  0.0     # .10.0
SHARED_LIBS +=	gstnet-0.10           0.0     # .10.0

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

MULTI_PACKAGES=		-main -frontend
WANTLIB=		c m pthread z
MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0.>=200.0,gmodule-2.0.>=200.0,gobject-2.0.>=200.0,gthread-2.0.>=200.0::devel/glib2 \
			xml2.>=6::textproc/libxml

CONFIGURE_ARGS=		--disable-gst-debug

.include <bsd.port.mk>
