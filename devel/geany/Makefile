# $OpenBSD: Makefile,v 1.64 2020/08/23 11:46:37 cwen Exp $

COMMENT=	small and lightweight IDE

DISTNAME =	geany-1.36
REVISION =	0
SHARED_LIBS +=  geany                     0.0 # 0.0

CATEGORIES=	devel

HOMEPAGE=	https://www.geany.org/

MAINTAINER=	Victor Kukshiev <andrey0bolkonsky@gmail.com>

# GPL + Scintilla License
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://download.geany.org/
EXTRACT_SUFX=	.tar.bz2

# C++11 
COMPILER =	base-clang ports-gcc
MODULES=	textproc/intltool

USE_GMAKE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread ${COMPILER_LIBCXX} xcb xcb-render xcb-shm
WANTLIB += z fribidi

LIB_DEPENDS=	x11/gtk+3
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/vte3 \
		x11/gtk+3,-guic

FAKE_FLAGS=	doc_DATA="${WRKSRC}/README"
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE=gnu
# Don't rebuild html/pdf docs, use whatever is included in the tarball
CONFIGURE_ARGS+=--enable-html-docs=no \
		--enable-pdf-docs=no \
		--enable-api-docs=no \
		--enable-gtk3=yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm -f ${PREFIX}/lib/geany/*.la

.include <bsd.port.mk>
