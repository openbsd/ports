# $OpenBSD: Makefile,v 1.39 2015/08/25 11:41:54 sthen Exp $

PORTROACH=	limit:.*[^a]$$

COMMENT=	MP3 technical info viewer and ID3 1.x tag editor

DISTNAME=	mp3info-0.8.5a
REVISION=	10
CATEGORIES=	audio

HOMEPAGE=	http://www.ibiblio.org/mp3info/

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mp3-utils/mp3info/}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

EXTRACT_SUFX=	.tgz

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

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
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z graphite2
.endif

.include <bsd.port.mk>
