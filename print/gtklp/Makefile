# $OpenBSD: Makefile,v 1.43 2019/11/02 12:01:13 ajacoutot Exp $

COMMENT=		GTK+ frontend to CUPS

DISTNAME=		gtklp-1.3.4
EXTRACT_SUFX=		.src.tar.gz

CATEGORIES=		print sysutils x11

HOMEPAGE=		http://gtklp.sirtobi.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 avahi-client avahi-common c cairo cups dbus-1
WANTLIB += expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += hogweed iconv idn2 intl m nettle p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread tasn1
WANTLIB += unistring xcb xcb-render xcb-shm z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gtklp/}

LIB_DEPENDS=		print/cups,-libs \
			x11/gtk+2

# package is only useful if cups is installed
RUN_DEPENDS +=		print/cups

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoreconf

AUTOMAKE_VERSION=	1.16
AUTOCONF_VERSION=	2.69
BUILD_DEPENDS +=	devel/gettext,-tools

post-extract:
	rm ${WRKSRC}/po/de.po.orig

.include <bsd.port.mk>
