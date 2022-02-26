# $OpenBSD: Makefile,v 1.1.1.1 2022/02/26 20:37:41 sdk Exp $

COMMENT=	multiple virtual desktop window manager

VERSION=	1.0.4
DISTNAME=	fvwm3-${VERSION}

CATEGORIES=     x11

HOMEPAGE=	https://www.fvwm.org/

MAINTAINER=	Michael <michi+openbsd@dataswamp.org>

# Mostly GPLv2, main module has some code under MIT
# See COPYING and https://github.com/fvwmorg/fvwm/commit/cadd6ed0d5
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcursor Xext Xft Xrandr Xpm Xrender
WANTLIB += c cairo curses fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 iconv intl m png
WANTLIB += readline rsvg-2 z event_core event_extra

MASTER_SITES=	https://github.com/fvwmorg/fvwm3/releases/download/${VERSION}/

LIB_DEPENDS+=	graphics/png \
		x11/gnome/librsvg \
		devel/libevent2

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
			--program-transform-name='s/^fvwm-/fvwm3-/' \
			--localedir=${TRUEPREFIX}/share/fvwm3/locale

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

post-install:
	mv ${WRKINST}/${TRUEPREFIX}/bin/FvwmCommand{,3}
	mv ${WRKINST}/${TRUEPREFIX}/share/FvwmScript-* \
		${WRKINST}/${TRUEPREFIX}/share/fvwm3/

.include <bsd.port.mk>
