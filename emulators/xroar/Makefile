# $OpenBSD: Makefile,v 1.16 2020/08/09 19:39:15 juanfra Exp $

COMMENT =		Dragon and CoCo emulator

DISTNAME =		xroar-0.36.2

CATEGORIES =		emulators

HOMEPAGE =		https://www.6809.org.uk/xroar/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += GL SDL2 X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 gtkglext-x11-1.0
WANTLIB += harfbuzz intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread sndfile z

MASTER_SITES =		https://www.6809.org.uk/xroar/dl/

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		audio/libsndfile \
			devel/sdl2 \
			x11/gtk+2 \
			x11/gtkglext

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk2 \
			--with-gtkgl \
			--with-sdl2 \
			--without-pulse
CONFIGURE_ENV =		GL_LIBS="-L${X11BASE}/lib" CC="${CC}" OBJC="${CC}" \
			CPPFLAGS="-I${LOCALBASE}/include"

NO_TEST =		Yes

ALL_TARGET =		all html
INSTALL_TARGET =	install install-html

post-install:
	${INSTALL_DATA} ${WRKDIST}/doc/*.png ${WRKDIST}/doc/*.pdf \
		${PREFIX}/share/doc/xroar

.include <bsd.port.mk>
