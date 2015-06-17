# $OpenBSD: Makefile,v 1.37 2015/06/17 18:35:06 jasper Exp $

PORTROACH=	limit:.*[^a]$$

COMMENT=	MP3 technical info viewer and ID3 1.x tag editor

DISTNAME=	mp3info-0.8.5a
REVISION=	8
CATEGORIES=	audio

HOMEPAGE=	http://www.ibiblio.org/mp3info/

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mp3-utils/mp3info/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncurses

EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
USE_GROFF =	Yes

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
ALL_TARGET=	mp3info doc
INSTALL_TARGET=	install-mp3info
.else
MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gthread-2.0 pthread xcb-render
WANTLIB += gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 GL Xxf86vm drm xcb-shm
.endif

.include <bsd.port.mk>
