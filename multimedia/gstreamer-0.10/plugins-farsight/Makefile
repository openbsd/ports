# $OpenBSD: Makefile,v 1.4 2010/07/22 19:21:31 ajacoutot Exp $

COMMENT =		farsight element for GStreamer

V =			0.12.11
DISTNAME =		gst-plugins-farsight-$V
PKGNAME =		gstreamer-plugins-farsight-$V

REVISION =		2

HOMEPAGE =		http://farsight.freedesktop.org/
MASTER_SITES =		${HOMEPAGE}/releases/gst-plugins-farsight/
EXTRACT_SUFX =		.tar.gz

WANTLIB += ORBit-2 dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre z gsm gconf-2 gstnet-0.10 gstreamer-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstrtp-0.10 gstnetbuffer-0.10
WANTLIB += xml2 stdc++

LIB_DEPENDS =		::audio/gsm \
			::devel/gconf2 \
			:gstreamer->=0.10:$P/core \
			::$P/plugins-base \
			::textproc/libxml

AUTOCONF_VERSION =	2.62

MODULES +=		devel/gettext

CONFIGURE_ARGS +=	--disable-jingle-p2p \
			--disable-jasper \
			--without-libj2k

.include <bsd.port.mk>
