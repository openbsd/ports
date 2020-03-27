# $OpenBSD: Makefile,v 1.14 2020/03/27 22:28:35 sebastia Exp $

COMMENT =		Qt GUI Interface for FluidSynth

DISTNAME =		qsynth-0.6.2

CATEGORIES =		audio

HOMEPAGE =		https://qsynth.sourceforge.io

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qsynth/}

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c
WANTLIB += m fluidsynth GL Qt5Network curses readline

.if ${MACHINE_ARCH} == "powerpc"
WANTLIB += atomic
.endif

MODULES =		x11/qt5

LIB_DEPENDS +=		audio/fluidsynth

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes
NO_TEST =		Yes

CONFIGURE_STYLE = 	gnu

CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib" \
			ac_cv_path_ac_qmake="${MODQT_QMAKE}"

.include <bsd.port.mk>
