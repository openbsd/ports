# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:20 sthen Exp $

V =		0.7.5
COMMENT =	ridiculous shoot-em-up game
DISTNAME =	mars_source_${V}
PKGNAME =	mars-${V}
CATEGORIES =	games x11
REVISION =	7

HOMEPAGE =	http://mars-game.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU Xrandr c fribidi m pthread sfml-audio sfml-graphics
WANTLIB += sfml-system sfml-window ${COMPILER_LIBCXX} tag

COMPILER =		base-clang ports-gcc base-gcc

# Not using the GH_* variables on purpose. The tarball was generated
# separately. Will update to use GH_* next time M.A.R.S. is updated.
MASTER_SITES =	https://github.com/downloads/thelaui/M.A.R.S./

MODULES =	devel/cmake

LIB_DEPENDS =	audio/taglib \
		devel/fribidi \
		multimedia/sfml

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/mars-game

.include <bsd.port.mk>
