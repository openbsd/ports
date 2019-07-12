# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:08 sthen Exp $

COMMENT =		games cataloging tool and emulator launcher

GH_ACCOUNT =		Monthy
GH_PROJECT =		gr-lida
DISTNAME =		gr-lida-0.11.1pre20180927
GH_COMMIT =		30c338b352096d94a92006d572d3b7f0062cafe1
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		http://www.gr-lida.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c GL glib-2.0 intl m poppler-qt5 pulse
WANTLIB += pulse-mainloop-glib Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5PrintSupport Qt5Sql Qt5Widgets Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Script z

MODULES =		x11/qt5
LIB_DEPENDS =		audio/pulseaudio \
			print/poppler,-qt5 \
			x11/qt5/qtmultimedia \
			x11/qt5/qtscript
RUN_DEPENDS =		devel/desktop-file-utils

FAKE_FLAGS +=		INSTALL_ROOT="${WRKINST}"

NO_TEST =		Yes

QMAKE_ARGS =		QMAKE_CC=${CC} \
			QMAKE_CXX=${CXX} \
			QMAKE_CFLAGS="${CFLAGS}" \
			QMAKE_CXXFLAGS="${CXXFLAGS}" \
			PREFIX=${PREFIX}

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/qmake-qt5 gr-lida.pro ${QMAKE_ARGS}

.include <bsd.port.mk>
