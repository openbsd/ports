# $OpenBSD: Makefile,v 1.45 2019/07/12 20:43:36 sthen Exp $

PORTROACH=	skipv:0.8.5

COMMENT=	MP3 technical info viewer and ID3 1.x tag editor

DISTNAME=	mp3info-0.8.5a
REVISION=	14
CATEGORIES=	audio

HOMEPAGE=	http://www.ibiblio.org/mp3info/

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mp3-utils/mp3info/}

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses

EXTRACT_SUFX=	.tgz

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
ALL_TARGET=	mp3info doc
INSTALL_TARGET=	install-mp3info
.else
LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gtk-x11-2.0 harfbuzz
WANTLIB += intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z
.endif

.include <bsd.port.mk>
