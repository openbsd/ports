COMMENT=	multiple virtual desktop window manager

VERSION=	2.6.9
REVISION=	1
DISTNAME=	fvwm-${VERSION}
PKGNAME=	fvwm2-${VERSION}

CATEGORIES=     x11

HOMEPAGE=	https://www.fvwm.org/

MAINTAINER=	Michael <michi+openbsd@dataswamp.org>

# Mostly GPLv2, main module has some code under MIT
# See COPYING and https://github.com/fvwmorg/fvwm/commit/cadd6ed0d5
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcursor Xext Xft Xinerama Xpm Xrender
WANTLIB += c cairo curses fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 iconv intl m png
WANTLIB += readline rsvg-2 z

MASTER_SITES=	https://github.com/fvwmorg/fvwm/releases/download/${VERSION}/

LIB_DEPENDS+=	graphics/png \
		x11/gnome/librsvg

BUILD_DEPENDS=	textproc/libxslt

FLAVORS=	debug
FLAVOR?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+= --enable-debug-msgs
.endif

SUBST_VARS=	VERSION

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-mandoc \
			--disable-bidi \
			--disable-gtk \
			--without-gnome \
			--without-rplay-library \
			--without-stroke-library
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
