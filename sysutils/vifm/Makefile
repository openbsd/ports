COMMENT =		ncurses file manager with Vim-like everything
V =			0.13
DISTNAME =		vifm-${V}
CATEGORIES =		sysutils
HOMEPAGE =		https://vifm.info/

MAINTAINER =		xaizek <xaizek@posteo.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=vifm/} \
			https://github.com/vifm/vifm/releases/download/v${V}/
EXTRACT_SUFX =		.tar.bz2

WANTLIB +=		c m curses pthread

SEPARATE_BUILD =	Yes
# tests require GNU make
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libmagic \
			--without-gtk \
			--without-X11 \
			--without-dyn-X11
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			MANGEN_PROG=mandoc

.include <bsd.port.mk>
