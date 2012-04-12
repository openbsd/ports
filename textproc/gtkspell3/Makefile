# $OpenBSD: Makefile,v 1.1.1.1 2012/04/12 18:04:26 ajacoutot Exp $

COMMENT=	gtk+3 spelling checker

V=		2.99.99
DISTNAME=	gtkspell-${V}
PKGNAME=	gtkspell3-${V}

SHARED_LIBS +=  gtkspell-3                0.0 # 0.0

CATEGORIES=	textproc x11

HOMEPAGE=	http://gtkspell.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm enchant expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

# Debian: gtkspell3_3.0.0~hg20110814.orig.tar.gz
MASTER_SITES=	http://distfiles.bsdfrog.org/
#MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkspell/}

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	textproc/enchant \
		x11/gtk+3

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc

.include <bsd.port.mk>
