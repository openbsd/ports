# $OpenBSD: Makefile,v 1.33 2010/09/05 22:00:13 sthen Exp $

COMMENT=	GTK+2 program to synchronize an Apple iPod
DISTNAME=	gtkpod-0.99.14
REVISION=	2
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xcomposite Xdamage c cairo expat fontconfig freetype m pthread
WANTLIB += pthread-stubs xcb z xml2 glitz png glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 atk-1.0 pixman-1
WANTLIB += dbus-1 gio-2.0 id3tag.>=2 gpod.>=600.0 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gtk-x11-2.0 glade-2.0.>=0.4 curl gnomevfs-2 gconf-2.>=5
WANTLIB += ORBit-2.>=2 mp4v2.>=3 xcb-render xcb-render-util

USE_X11=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	::audio/libid3tag \
		::audio/libgpod \
		::x11/gtk+2 \
		::devel/libglade2 \
		::net/curl \
		::x11/gnome/vfs2 \
		::devel/gconf2 \
		::devel/ORBit2 \
		::multimedia/libmp4v2

MODULES=	devel/gettext textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--without-hal
# trampolines needed for display_playlists.c
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -ftrampolines" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
