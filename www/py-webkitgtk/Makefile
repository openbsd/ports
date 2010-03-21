# $OpenBSD: Makefile,v 1.7 2010/03/21 09:27:54 jasper Exp $

COMMENT=		python bindings for the WebKit GTK+ port

V=			1.1.7
DISTNAME=		pywebkitgtk-$V
PKGNAME=		py-webkitgtk-$V
CATEGORIES=		www

HOMEPAGE=		http://pywebkitgtk.googlecode.com/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo
WANTLIB += enchant expat ffi fontconfig freetype gailutil gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnutls gobject-2.0 gpg-error gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += iconv icudata icui18n icuuc intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs soup-2.4
WANTLIB += sqlite3 stdc++ tasn1 xcb xml2 z

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/py-gtk2
LIB_DEPENDS=		xslt::textproc/libxslt \
			webkit-1.0:webkit->=1.1.10:www/webkit

CONFIGURE_STYLE=	gnu

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

.include <bsd.port.mk>
