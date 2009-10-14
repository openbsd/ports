# $OpenBSD: Makefile,v 1.1.1.1 2009/10/14 15:46:56 jasper Exp $

COMMENT =		multimedia framework - farsight plugin

V =			0.12.11
DISTNAME =		gst-plugins-farsight-$V
PKGNAME =		gstreamer-plugins-farsight-$V

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

MODPY_RUNDEP =		No

.include <bsd.port.mk>
