# $OpenBSD: Makefile,v 1.1.1.1 2009/06/05 21:58:43 phessler Exp $

COMMENT =	portable version of iD Software's Doom
DISTNAME =	chocolate-doom-1.2.1
CATEGORIES =	games x11

HOMEPAGE =	http://www.chocolate-doom.org/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	SDL c m pthread

LIB_DEPENDS =	SDL_mixer.>=3::devel/sdl-mixer \
		SDL_net.>=1::devel/sdl-net \
		samplerate.>=1::audio/libsamplerate

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=chocolate-doom/}

USE_X11 =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+ =	--without-python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/games/doom/
	${INSTALL_MAN} ${WRKBUILD}/man/chocolate-doom.cfg.5 \
		${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKBUILD}/man/default.cfg.5 \
		${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKBUILD}/man/chocolate-doom.6 \
		${PREFIX}/man/man6/
	${INSTALL_MAN} ${WRKBUILD}/man/chocolate-server.6 \
		${PREFIX}/man/man6/
	${INSTALL_MAN} ${WRKBUILD}/man/chocolate-setup.6 \
		${PREFIX}/man/man6/

.include <bsd.port.mk>
