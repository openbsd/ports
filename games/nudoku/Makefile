COMMENT =	ncurses based sudoku game

GH_ACCOUNT =	jubalh
GH_PROJECT =	nudoku
GH_TAGNAME =	2.1.0
REVISION =	0

CATEGORIES =	games

HOMEPAGE =	https://jubalh.github.io/nudoku/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses iconv intl

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	converters/libiconv \
		devel/gettext,-runtime

CONFIGURE_STYLE = autoreconf
AUTOCONF_VERSION = 2.69
AUTOMAKE_VERSION = 1.16

post-configure:
	@sed -i 's|"gettext.h"|<libintl.h>|' ${WRKSRC}/src/main.c \
		 ${WRKSRC}/src/sudoku.c

.include <bsd.port.mk>
