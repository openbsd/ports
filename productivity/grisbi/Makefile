# $OpenBSD: Makefile,v 1.39 2016/11/01 18:04:06 landry Exp $

COMMENT=	personal accounting application

GH_ACCOUNT =	grisbi
GH_PROJECT =	grisbi
GH_TAGNAME =	upstream_version_1_0_1
DISTNAME=	grisbi-1.0.1

CATEGORIES=	productivity x11

HOMEPAGE=	http://www.grisbi.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 bz2 c cairo crypto dbus-1 dbus-glib-1 expat
WANTLIB += ffi fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 goffice-0.8
WANTLIB += graphite2 gsf-1 gthread-2.0 gtk-x11-2.0 harfbuzz lzma m ofx
WANTLIB += osp pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render xcb-shm xml2 z
WANTLIB += iconv intl

MODULES =	textproc/intltool

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+2 \
		devel/goffice08 \
		devel/libofx

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	--with-openssl

AUTOMAKE_VERSION =	1.14
AUTOCONF_VERSION =	2.65
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh

.include <bsd.port.mk>
