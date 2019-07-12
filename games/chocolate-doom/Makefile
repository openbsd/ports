# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:15 sthen Exp $

COMMENT =	portable release of Doom, Heretic, Hexen, and Strife
V =		3.0.0
DISTNAME =	chocolate-doom-${V}
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	https://www.chocolate-doom.org/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += SDL2 SDL2_mixer SDL2_net c m png samplerate z

LIB_DEPENDS =	devel/sdl2-mixer \
		devel/sdl2-net \
		audio/libsamplerate \
		graphics/png

MASTER_SITES =	https://www.chocolate-doom.org/downloads/${V}/

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	autoreconf
AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	--mandir="${LOCALBASE}/man"

# python just used for generating manpages
BUILD_DEPENDS =	lang/python/2.7

post-extract:
	# set correct data directory
	@sed -i 's,"/games/doom","/doom",g' ${WRKSRC}/src/d_iwad.c
	# set correct python binary name
	@sed -i 's/HAVE_PYTHON, python/HAVE_PYTHON, python2/' \
		${WRKSRC}/configure.ac
	@sed -i 's,/usr/bin/env python,/usr/bin/env python2,' \
		${WRKSRC}/man/docgen
	@sed -i 's,/usr/bin/env python,/usr/bin/env python2,' \
		${WRKSRC}/man/simplecpp
 
post-install:
	# Data files get installed to this directory.
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/

.include <bsd.port.mk>
