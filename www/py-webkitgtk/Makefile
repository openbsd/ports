# $OpenBSD: Makefile,v 1.3 2009/06/22 10:43:58 sthen Exp $

COMMENT=		python bindings for the WebKit GTK+ port

V=			1.1.4
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
WANTLIB += expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 iconv icudata icui18n
WANTLIB += icuuc intl jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png soup-2.4 sqlite3 tasn1 xml2 xslt
WANTLIB += z enchant stdc++

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt \
			::x11/py-gtk2
LIB_DEPENDS=		webkit-1.0:webkit->=41894:www/webkit

CONFIGURE_STYLE=	gnu

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes

.include <bsd.port.mk>
