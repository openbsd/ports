# $OpenBSD: Makefile,v 1.17 2010/04/24 17:13:04 ajacoutot Exp $

COMMENT=		collection of extensions for Epiphany

GNOME_PROJECT=		epiphany-extensions
GNOME_VERSION=		2.30.0
PKGNAME=		${DISTNAME}p1

CATEGORIES=		www

HOMEPAGE=		http://projects.gnome.org/epiphany/extensions

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo
WANTLIB += enchant expat fontconfig freetype gailutil gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gstapp-0.10 gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 gtk-x11-2.0
WANTLIB += icudata icui18n icuuc jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs soup-2.4
WANTLIB += sqlite3 stdc++ tasn1 webkit-1.0 xcb xcb-render xcb-render-util
WANTLIB += xml2 xslt z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome


BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:epiphany->=2.30.0:www/epiphany
LIB_DEPENDS=	gpg-error::security/libgpg-error

USE_X11=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_HELP_FILES=	Yes

FAKE_FLAGS+=	PYTHON="${MODPY_BIN}"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-schemas-install \
		--disable-scrollkeeper \
		--enable-opensp=no

API_V=		2.29
M=		${GNOME_VERSION:R}
SUBST_VARS=	M API_V

.include <bsd.port.mk>
