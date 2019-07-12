# $OpenBSD: Makefile,v 1.23 2019/07/12 20:51:12 sthen Exp $

COMMENT =	GTK+2 engine from Fedora

VERSION =	0.7.5
DISTNAME =	gtk-nodoka-engine-${VERSION}
PKGNAME =	gtk2-nodoka-engine-${VERSION}
REVISION=	9

CATEGORIES =	x11

HOMEPAGE =	https://pagure.io/nodoka-theme

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread ${COMPILER_LIBCXX} xcb
WANTLIB += xcb-render xcb-shm z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	http://bsdforge.com/projects/source/x11-themes/gtk-nodoka-engine/

LIB_DEPENDS =	x11/gtk+2

CONFIGURE_STYLE =	gnu

# XXX gtk+3 support does not build yet
CONFIGURE_ARGS +=	--with-gtk=2.0

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtk2-nodoka-engine
	${INSTALL_DATA} ${WRKSRC}/README  ${PREFIX}/share/doc/gtk2-nodoka-engine/

.include <bsd.port.mk>
