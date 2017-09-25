# $OpenBSD: Makefile,v 1.2 2017/09/25 21:25:18 sthen Exp $

COMMENT =		games cataloging tool and emulator launcher

GH_ACCOUNT =		Monthy
GH_PROJECT =		gr-lida
GH_TAGNAME =		v0.11.0
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		http://www.gr-lida.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE QtDBus QtGui QtNetwork QtScript
WANTLIB += QtSql QtXml SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m phonon poppler-qt4 z

MODULES =		x11/qt4
LIB_DEPENDS =		print/poppler,,-qt4
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
		${LOCALBASE}/bin/qmake4 gr-lida.pro ${QMAKE_ARGS}

.include <bsd.port.mk>
