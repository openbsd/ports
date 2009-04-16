# $OpenBSD: Makefile,v 1.10 2009/04/16 11:40:45 ajacoutot Exp $

COMMENT =		streaming media framework - core

V =			0.10.19

PKGNAME =		gstreamer-$Vp3

DISTNAME =		gstreamer-$V

SHARED_LIBS +=	gstreamer-0.10        0.2     # .11.0
SHARED_LIBS +=	gstbase-0.10          0.2     # .11.0
SHARED_LIBS +=	gstcontroller-0.10    1.0     # .11.0
SHARED_LIBS +=	gstdataprotocol-0.10  0.0     # .11.0
SHARED_LIBS +=	gstnet-0.10           0.1     # .11.0

WANTLIB += c m pcre pthread z

MASTER_SITES =		${MASTER_SITE_GST:=gstreamer/}

MODULES =		devel/gettext

LIB_DEPENDS =		xml2.>=6::textproc/libxml \
			glib-2.0.>=1800,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2

CONFIGURE_ARGS =	--without-check

.include <bsd.port.mk>
