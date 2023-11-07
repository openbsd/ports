COMMENT =	Qodem Terminal Emulator

DISTNAME =	qodem-1.0.1
REVISION =	0

CATEGORIES =	comms

HOMEPAGE =	https://qodem.sourceforge.net/

# CC0 (Public Domain)
# MIT (UTF-8 decoder in source/codepage.c)
PERMIT_PACKAGE =	Yes

WANTLIB += c curses util

SITES =		${SITE_SOURCEFORGE:=qodem/}

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-sdl --disable-upnp --disable-gpm

NO_TEST =	Yes

.include <bsd.port.mk>
