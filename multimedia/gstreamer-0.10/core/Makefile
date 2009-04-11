# $OpenBSD: Makefile,v 1.9 2009/04/11 14:37:21 ajacoutot Exp $

COMMENT-main =		streaming media framework - core
COMMENT-frontend =	streaming media framework - frontend commands

V =			0.10.19

PKGNAME-main =		gstreamer-$Vp2
PKGNAME-frontend =	gstreamer-frontend-$Vp2

DISTNAME =		gstreamer-$V

SHARED_LIBS +=	gstreamer-0.10        0.2     # .11.0
SHARED_LIBS +=	gstbase-0.10          0.2     # .11.0
SHARED_LIBS +=	gstcontroller-0.10    1.0     # .11.0
SHARED_LIBS +=	gstdataprotocol-0.10  0.0     # .11.0
SHARED_LIBS +=	gstnet-0.10           0.1     # .11.0
#SHARED_LIBS +=  gstcheck-0.10         0.0     # .16.0

MASTER_SITES =		${MASTER_SITE_GST:=gstreamer/}

MULTI_PACKAGES =	-main -frontend
WANTLIB =		m pcre z
MODULES =		devel/gettext

LIB_DEPENDS =		glib-2.0.>=200.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2

WANTLIB-frontend =	${WANTLIB} c pthread xml2

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			xml2.>=6::textproc/libxml

LIB_DEPENDS-frontend =	${LIB_DEPENDS} \
			gstreamer-0.10::multimedia/gstreamer-0.10/core,-main

CONFIGURE_ARGS =	--without-check

.include <bsd.port.mk>
