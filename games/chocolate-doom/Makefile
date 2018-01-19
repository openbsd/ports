# $OpenBSD: Makefile,v 1.24 2018/01/19 19:57:38 sthen Exp $

COMMENT =	portable release of Doom, Heretic, Hexen, and Strife
V =		3.0.0
DISTNAME =	chocolate-doom-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://www.chocolate-doom.org/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += SDL2 SDL2_mixer SDL2_net c m png samplerate z

LIB_DEPENDS =	devel/sdl2-mixer \
		devel/sdl2-net \
		audio/libsamplerate \
		graphics/png

MASTER_SITES =	https://www.chocolate-doom.org/downloads/${V}/

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
AUTOMAKE_VERSION =	1.15
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	--mandir="${LOCALBASE}/man"

# python just used for generating manpages
BUILD_DEPENDS =	lang/python/2.7 \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

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

pre-configure:
	@cd ${WRKSRC}; AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	       AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -fi
 
post-install:
	# Data files get installed to this directory.
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/

.include <bsd.port.mk>
