COMMENT =	ncurses based sudoku game

GH_ACCOUNT =	jubalh
GH_PROJECT =	nudoku
GH_TAGNAME =	4.0.0

CATEGORIES =	games

HOMEPAGE =	https://jubalh.github.io/nudoku/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses iconv intl

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	converters/libiconv \
		devel/gettext,-runtime

CONFIGURE_STYLE = autoreconf
AUTOCONF_VERSION = 2.71
AUTOMAKE_VERSION = 1.16

CONFIGURE_ENV =	ncursesw_CFLAGS="-D_GNU_SOURCE -D_DEFAULT_SOURCE" \
		ncursesw_LIBS="-lcurses"

post-configure:
	@sed -i 's|"gettext.h"|<libintl.h>|' ${WRKSRC}/src/main.c \
		 ${WRKSRC}/src/sudoku.c

.include <bsd.port.mk>
