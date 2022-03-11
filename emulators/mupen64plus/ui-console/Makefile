COMMENT =		n64 emulator command-line ui plugin

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB = 		SDL2 c pthread
LIB_DEPENDS =		devel/sdl2

MUPEN64PLUS_MOD = 	ui-console

MAKE_FLAGS +=		MANDIR=${PREFIX}/man \
			PIE=1

USE_WXNEEDED =		Yes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

.include <bsd.port.mk>
