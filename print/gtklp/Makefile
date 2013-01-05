# $OpenBSD: Makefile,v 1.19 2013/01/05 12:53:09 ajacoutot Exp $

COMMENT=	GTK+2 frontend to CUPS

DISTNAME=	gtklp-1.2.10
CATEGORIES=	print sysutils x11
REVISION=	0

EXTRACT_SUFX=	.src.tar.gz

HOMEPAGE=	http://gtklp.sirtobi.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 atk-1.0 avahi-client
WANTLIB += avahi-common c cairo crypto cups dbus-1 drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz icudata icule icuuc krb5 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs ssl stdc++ xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtklp/}

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2 \
		print/cups,-libs

# package is only useful if cups is installed
RUN_DEPENDS +=	print/cups

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

# XXX configure is re-run a second time with "missing --run aclocal-1.11 -I m4"
AUTOMAKE_VERSION=1.11
AUTOCONF_VERSION=2.68
BUILD_DEPENDS=	${MODGNU_AUTOMAKE_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS}
MAKE_FLAGS=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}
# end XXX

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
