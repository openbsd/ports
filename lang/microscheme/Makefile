COMMENT =	scheme subset for atmel microcontrollers
DISTNAME =	microscheme-0.9.4
REVISION =	1
CATEGORIES =	lang

GH_ACCOUNT =	ryansuchocki
GH_PROJECT =	microscheme
GH_TAGNAME =	v0.9.4

HOMEPAGE =	https://ryansuchocki.github.io/microscheme/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

# vim is needed for xxd
BUILD_DEPENDS =	vim-*|vim-classic-*:editors/vim
MAKE_FILE =	makefile
ALL_TARGET =	build

.include <bsd.port.mk>
