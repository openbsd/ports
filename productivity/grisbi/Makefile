# $OpenBSD: Makefile,v 1.33 2014/03/30 19:36:42 landry Exp $

COMMENT=	personal accounting application
SHARED_ONLY =	Yes

DISTNAME=	grisbi-1.0.0

CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.grisbi.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grisbi/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m osp pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb z pcre crypto gdk_pixbuf-2.0
WANTLIB += xml2 gdk-x11-2.0 gtk-x11-2.0 ofx gthread-2.0
WANTLIB += xcb-render xcb-shm ffi graphite2 harfbuzz
WANTLIB += bz2 dbus-1 dbus-glib-1 gconf-2 goffice-0.8 gsf-1


MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+2 \
		devel/goffice08 \
		devel/libofx

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS=	--with-openssl

.include <bsd.port.mk>
