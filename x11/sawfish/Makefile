# $OpenBSD: Makefile,v 1.82 2019/07/12 20:51:21 sthen Exp $

COMMENT=	extensible window manager

VERSION=	1.9.1
DISTNAME=	sawfish-${VERSION}
REVISION=	10

CATEGORIES=	x11

MASTER_SITES=	https://download.tuxfamily.org/sawfish/ \
		https://download.tuxfamily.org/sawfish/Archive/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://sawfish.wikia.com/

# GPLv2
# Sounds: Artistic License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xrandr Xrender Xtst atk-1.0 c cairo expat ffi
WANTLIB += fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0
WANTLIB += pangoxft-1.0 pcre png pthread rep xcb z

BUILD_DEPENDS=	archivers/gtar \
		devel/gettext,-tools \
		x11/rep-gtk>=0.90.8.1
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/rep-gtk>=0.90.8.1 \
		x11/gtk+3,-guic

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/pangox-compat>=0.0.2 \
		lang/librep \
		x11/gtk+2

USE_GMAKE=      Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-linguas \
		--without-kde4session \
		--with-gnome2session \
		--with-xdmsession
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include -pthread" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/themes/Makefile.in

post-install:
	cd ${PREFIX}/share/sawfish/themes/ && \
		chown -R ${SHAREOWN}:${SHAREGRP} StyleTab

.include <bsd.port.mk>
