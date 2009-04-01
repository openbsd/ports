# $OpenBSD: Makefile,v 1.2 2009/04/01 08:30:45 martin Exp $

COMMENT =	terminal-based tetris clone in vein of nintendo tetris
DISTNAME =	vitetris-0.51
PKGNAME =	${DISTNAME}p0
CATEGORIES =	games

HOMEPAGE =	http://victornils.net/tetris/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c ncurses

MASTER_SITES =	http://victornils.net/tetris/

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			curses="-lncurses" \
			xlib=no

ALL_TARGET =	# empty
NO_REGRESS =	Yes

CFLAGS+=	-fsigned-char

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vitetris
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/vitetris/vitetris-hiscores

.include <bsd.port.mk>
