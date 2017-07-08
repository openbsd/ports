# $OpenBSD: Makefile,v 1.1.1.1 2017/07/08 20:17:29 juanfra Exp $

COMMENT =		games cataloging tool and emulator launcher

V =			0.11.0
DISTNAME =		gr-lida-$V

CATEGORIES =		emulators

HOMEPAGE =		http://www.gr-lida.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtDBus QtGui QtNetwork QtScript QtSql QtXml SM
WANTLIB += X11 Xext Xi Xinerama Xrender c fontconfig freetype
WANTLIB += m phonon poppler-qt4 pthread stdc++ z

GH_ACCOUNT =		Monthy
GH_PROJECT =		gr-lida
GH_TAGNAME =		v$V

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
