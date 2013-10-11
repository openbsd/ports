# $OpenBSD: Makefile,v 1.14 2013/10/11 23:49:34 naddy Exp $

COMMENT =	portable version of iD Software's Doom
DISTNAME =	chocolate-doom-1.7.0
CATEGORIES =	games x11

HOMEPAGE =	http://www.chocolate-doom.org/

MAINTAINER =	Ryan Freeman <rfreeman@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	SDL c m pthread SDL_mixer>=3 SDL_net>=1 samplerate>=1

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		audio/libsamplerate

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=chocolate-doom/}

RUN_DEPENDS =	devel/desktop-file-utils


CONFIGURE_STYLE =	gnu

# we don't need to require python to build
CONFIGURE_ENV +=	HAVE_PYTHON=false

# set correct program directory
MAKE_FLAGS =	gamesdir="${TRUEPREFIX}/bin"

MAN_5 =		chocolate-doom.cfg default.cfg
MAN_6 =		chocolate-doom chocolate-server chocolate-setup

post-extract:
	# set correct data directory
	@perl -pi -e "s,/usr/share/games/doom,${TRUEPREFIX}/share/doom," \
		${WRKSRC}/src/d_iwad.c

post-install:
	# Data files get installed to this directory.
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/
.for m in ${MAN_5}
	${INSTALL_MAN} ${WRKBUILD}/man/$m.5 ${PREFIX}/man/man5/
.endfor
.for m in ${MAN_6}
	${INSTALL_MAN} ${WRKBUILD}/man/$m.6 ${PREFIX}/man/man6/
.endfor

.include <bsd.port.mk>
