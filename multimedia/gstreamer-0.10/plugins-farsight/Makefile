# $OpenBSD: Makefile,v 1.3 2010/07/08 22:14:47 ajacoutot Exp $

COMMENT =		farsight element for GStreamer

V =			0.12.11
DISTNAME =		gst-plugins-farsight-$V
PKGNAME =		gstreamer-plugins-farsight-$Vp1

HOMEPAGE =		http://farsight.freedesktop.org/
MASTER_SITES =		${HOMEPAGE}/releases/gst-plugins-farsight/
EXTRACT_SUFX =		.tar.gz

WANTLIB += ORBit-2 dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre z

LIB_DEPENDS =		gsm::audio/gsm \
			gconf-2::devel/gconf2 \
			gstnet-0.10,gstreamer-0.10,gstbase-0.10:gstreamer->=0.10:$P/core \
			gstinterfaces-0.10,gstrtp-0.10,gstnetbuffer-0.10::$P/plugins-base \
			xml2::textproc/libxml

AUTOCONF_VERSION =	2.62

MODULES +=		devel/gettext

CONFIGURE_ARGS +=	--disable-jingle-p2p \
			--disable-jasper \
			--without-libj2k

.include <bsd.port.mk>
