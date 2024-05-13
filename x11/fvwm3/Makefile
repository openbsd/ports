COMMENT=	multiple virtual desktop window manager

VERSION=	1.1.0
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
WANTLIB += readline rsvg-2 event_core event_extra

SITES=		https://github.com/fvwmorg/fvwm3/releases/download/${VERSION}/

BUILD_DEPENDS+=	textproc/asciidoctor

LIB_DEPENDS+=	graphics/png \
		x11/gnome/librsvg \
		devel/libevent2

SUBST_VARS=	VERSION

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--enable-mandoc \
			--disable-bidi \
			--program-transform-name='s/^fvwm-/fvwm3-/' \
			--localedir=${TRUEPREFIX}/share/fvwm3/locale

CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

DEBUG_PACKAGES =       ${BUILD_PACKAGES}

USE_GMAKE =	yes

post-install:
	cd ${WRKINST}/${TRUEPREFIX}/man/man1 && for m in Fvwm*.1; \
		do mv {,fvwm3-}$$m; done
	cd ${WRKINST}/${TRUEPREFIX}/man/man1/ && \
		mv fvwm3-FvwmCommand{,3}.1 && \
		ln -s fvwm3-FvwmCommand3.1 FvwmCommand3.1
	mv ${WRKINST}/${TRUEPREFIX}/bin/FvwmCommand{,3}
	mv ${WRKINST}/${TRUEPREFIX}/share/FvwmScript-* \
		${WRKINST}/${TRUEPREFIX}/share/fvwm3/

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "base-clang"
CFLAGS+=		-Wno-error=int-conversion
.endif
