COMMENT=		GTK+ frontend to CUPS

DISTNAME=		gtklp-1.3.4
EXTRACT_SUFX=		.src.tar.gz
REVISION=		3

CATEGORIES=		print sysutils x11

HOMEPAGE=		http://gtklp.sirtobi.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += avahi-client avahi-common c cairo crypto cups dbus-1
WANTLIB += execinfo expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-x11-2.0 harfbuzz iconv intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png ssl xcb
WANTLIB += xcb-render xcb-shm z

SITES=			${SITE_SOURCEFORGE:=gtklp/}

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
