COMMENT =		Qt GUI Interface for FluidSynth

DISTNAME =		qsynth-0.9.13

CATEGORIES =		audio

HOMEPAGE =		https://qsynth.sourceforge.io

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=qsynth/}

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Svg
WANTLIB += Qt6Widgets c fluidsynth m

MODULES =		x11/qt6 \
			devel/cmake

LIB_DEPENDS +=		audio/fluidsynth>=2.3.2 \
			x11/qt6/qtsvg

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+4,-guic

NO_TEST =		Yes

.if ${MACHINE_ARCH} == "hppa"
WANTLIB +=		atomic
.endif

.include <bsd.port.mk>
