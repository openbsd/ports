# $OpenBSD: Makefile,v 1.7 2010/11/16 11:23:26 espie Exp $

COMMENT =	portable version of iD Software's Doom
DISTNAME =	chocolate-doom-1.2.1
REVISION =	0
CATEGORIES =	games x11

HOMEPAGE =	http://www.chocolate-doom.org/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	SDL c m pthread SDL_mixer>=3 SDL_net>=1 samplerate>=1

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		audio/libsamplerate

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=chocolate-doom/}

USE_GROFF =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+ =	--without-python

MAN_5=		chocolate-doom.cfg default.cfg
MAN_6=		chocolate-doom chocolate-server chocolate-setup

post-install:
	# Data files get installed to this directory.
	${INSTALL_DATA_DIR} ${PREFIX}/share/games/doom/
.for m in ${MAN_5}
	${INSTALL_MAN} ${WRKBUILD}/man/$m.5 ${PREFIX}/man/man5/
.endfor
.for m in ${MAN_6}
	${INSTALL_MAN} ${WRKBUILD}/man/$m.6 ${PREFIX}/man/man6/
.endfor

.include <bsd.port.mk>
