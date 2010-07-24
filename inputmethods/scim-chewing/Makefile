# $OpenBSD: Makefile,v 1.5 2010/07/24 11:44:17 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	scim input method module for chewing

DISTNAME=	scim-chewing-0.3.3
REVISION=	0

CATEGORIES=	inputmethods chinese

HOMEPAGE=	http://www.scim-im.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gio-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs \
		stdc++ xcb z gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 \
		chewing scim-1.0 scim-gtkutils-1.0 scim-x11utils-1.0 \
		gthread-2.0 xcb-render xcb-render-util

MODULES=	devel/gettext \
		textproc/intltool

MASTER_SITES=	http://chewing.csie.net/download/scim/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	::x11/gtk+2 \
		::chinese/libchewing \
		::inputmethods/scim

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
