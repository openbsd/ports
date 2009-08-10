# $OpenBSD: Makefile,v 1.31 2009/08/10 06:29:52 kili Exp $

COMMENT=	GTK+2 program to synchronize an Apple iPod
DISTNAME=	gtkpod-0.99.14
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	id3tag.>=2::audio/libid3tag \
		gpod.>=600.0::audio/libgpod \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0.>=0.4::devel/libglade2 \
		curl.::net/curl \
		gnomevfs-2::x11/gnome/vfs2 \
		gconf-2.>=5::devel/gconf2 \
		ORBit-2.>=2::devel/ORBit2 \
		mp4v2.>=3::multimedia/libmp4v2

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		Xcomposite Xdamage c cairo expat fontconfig freetype m \
		pthread pthread-stubs xcb z \
		xml2 glitz png glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 atk-1.0 \
		pixman-1 dbus-1 gio-2.0

MODULES=	devel/gettext textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--without-hal
# trampolines needed for display_playlists.c
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -ftrampolines" \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
