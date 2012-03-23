# $OpenBSD: Makefile,v 1.11 2012/03/23 13:28:25 ajacoutot Exp $

COMMENT =		farsight element for GStreamer

V =			0.12.11
DISTNAME =		gst-plugins-farsight-$V
PKGNAME =		gstreamer-plugins-farsight-$V

REVISION =		7

HOMEPAGE =		http://farsight.freedesktop.org/
MASTER_SITES =		${HOMEPAGE}/releases/gst-plugins-farsight/
EXTRACT_SUFX =		.tar.gz

WANTLIB += dbus-1 dbus-glib-1 ffi gconf-2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gsm gstbase-0.10 gstinterfaces-0.10 gstnet-0.10
WANTLIB += gstnetbuffer-0.10 gstreamer-0.10 gstrtp-0.10 gthread-2.0
WANTLIB += m pcre stdc++ xml2 z

LIB_DEPENDS =		audio/gsm \
			devel/gconf2 \
			$P/core>=0.10 \
			$P/plugins-base \
			textproc/libxml

AUTOCONF_VERSION =	2.63

MODULES +=		devel/gettext

CONFIGURE_ARGS +=	--disable-jingle-p2p \
			--disable-jasper \
			--without-libj2k

.include <bsd.port.mk>
