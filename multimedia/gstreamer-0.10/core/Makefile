# $OpenBSD: Makefile,v 1.8 2009/03/09 23:09:19 espie Exp $

COMMENT-main =		streaming media framework - core
COMMENT-frontend =	streaming media framework - frontend commands

V =			0.10.19

PKGNAME-main =		gstreamer-$Vp1
PKGNAME-frontend =	gstreamer-frontend-$Vp1

DISTNAME =		gstreamer-$V

SHARED_LIBS +=	gstreamer-0.10        0.2     # .11.0
SHARED_LIBS +=	gstbase-0.10          0.2     # .11.0
SHARED_LIBS +=	gstcontroller-0.10    1.0     # .11.0
SHARED_LIBS +=	gstdataprotocol-0.10  0.0     # .11.0
SHARED_LIBS +=	gstnet-0.10           0.1     # .11.0
#SHARED_LIBS +=  gstcheck-0.10         0.0     # .16.0

MASTER_SITES =		${MASTER_SITE_GST:=gstreamer/}

MULTI_PACKAGES =	-main -frontend
WANTLIB =		c pcre
MODULES =		devel/gettext

LIB_DEPENDS =		glib-2.0.>=200.0::devel/glib2

WANTLIB-main =		${WANTLIB} \
			gmodule-2.0.>=200.0 gobject-2.0.>=200.0 \
			gthread-2.0.>=200.0 \
			m pthread z

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			xml2.>=6::textproc/libxml

CONFIGURE_ARGS =	--without-check

.include <bsd.port.mk>
