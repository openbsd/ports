# $OpenBSD: Makefile,v 1.3 2009/08/10 06:32:05 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	scim input method module for pinyin

DISTNAME=	scim-pinyin-0.5.91
PKGNAME=	${DISTNAME}p1

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
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread-stubs stdc++ xcb z gio-2.0

MODULES=	devel/gettext

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		scim-1.0,scim-gtkutils-1.0,scim-x11utils-1.0::inputmethods/scim

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-skim-support

.include <bsd.port.mk>
