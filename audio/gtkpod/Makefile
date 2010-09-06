# $OpenBSD: Makefile,v 1.34 2010/09/06 17:07:24 ajacoutot Exp $

COMMENT=	GTK+2 program to synchronize an Apple iPod
DISTNAME=	gtkpod-0.99.14
REVISION=	3
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xcomposite Xdamage c cairo expat fontconfig freetype m pthread
WANTLIB += pthread-stubs xcb z xml2 glitz png glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 atk-1.0 pixman-1
WANTLIB += gio-2.0 id3tag gpod gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 curl
WANTLIB += glade-2.0 mp4v2 xcb-render xcb-render-util

USE_X11=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	::audio/libid3tag \
		::audio/libgpod \
		::devel/libglade2 \
		::net/curl \
		::multimedia/libmp4v2

MODULES=	devel/gettext textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--without-hal \
		--without-gnome-vfs
# trampolines needed for display_playlists.c
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -ftrampolines" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
