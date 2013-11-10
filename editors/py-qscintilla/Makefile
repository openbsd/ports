# $OpenBSD: Makefile,v 1.6 2013/11/10 22:23:43 sthen Exp $

COMMENT =	Python binding for the Scintilla source code editor

VERSION =	2.8
DISTNAME =	QScintilla-gpl-${VERSION}
PKGNAME =	py-qscintilla-${VERSION}
CATEGORIES =	editors x11 devel

HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=pyqt/}

MODULES = lang/python x11/qt4

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS = devel/py-sip \
		x11/py-qt4 \
		x11/dbus-python
LIB_DEPENDS = editors/qscintilla

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB += freetype m qscintilla2 stdc++ pthread

WRKSRC =	${WRKDIST}/Python

NO_TEST =	Yes

# do not use ./setup.py to build
CONFIGURE_STYLE = no

CONFIGURE_ARGS = --qmake=${LOCALBASE}/bin/qmake4 \
		--qsci-libdir=${LOCALBASE}/lib \
		--pyqt-sipdir=${LOCALBASE}/share/sip

MAKE_ENV =	INSTALL_ROOT="${WRKINST}"

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ${WRKSRC}/configure.py ${CONFIGURE_ARGS}

.include <bsd.port.mk>
