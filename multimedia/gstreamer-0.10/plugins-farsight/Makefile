# $OpenBSD: Makefile,v 1.2 2009/11/29 09:18:11 ajacoutot Exp $

COMMENT =		farsight element for GStreamer

V =			0.12.11
DISTNAME =		gst-plugins-farsight-$V
PKGNAME =		gstreamer-plugins-farsight-$Vp0

HOMEPAGE =		http://farsight.freedesktop.org/
MASTER_SITES =		${HOMEPAGE}/releases/gst-plugins-farsight/
EXTRACT_SUFX =		.tar.gz

WANTLIB += ORBit-2 dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre z

LIB_DEPENDS =		gsm::audio/gsm \
			gconf-2::devel/gconf2 \
			gstnet-0.10,gstreamer-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstinterfaces-0.10,gstrtp-0.10,gstnetbuffer-0.10::$P/plugins-base \
			::multimedia/gstreamer-0.10/plugins-ugly \
			xml2::textproc/libxml

AUTOCONF_VERSION =	2.62

MODULES +=	devel/gettext

.include <bsd.port.mk>
