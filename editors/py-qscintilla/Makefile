# $OpenBSD: Makefile,v 1.3 2013/03/11 11:02:50 espie Exp $

# XXX: Upstream doesn't keep old files; if updating please mirror or ask sthen@

COMMENT =	Python binding for the Scintilla source code editor

VERSION =	2.5.1
REVISION =	0
DISTNAME =	QScintilla-gpl-${VERSION}
PKGNAME =	py-qscintilla-${VERSION}
CATEGORIES =	editors x11 devel

HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =  http://www.riverbankcomputing.com/static/Downloads/QScintilla2/ \
		http://spacehopper.org/mirrors/

MODULES = lang/python x11/qt4

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS = devel/py-sip \
		x11/py-qt4 \
		x11/dbus-python
LIB_DEPENDS = editors/qscintilla

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB += freetype m qscintilla2 stdc++

WRKSRC =	${WRKDIST}/Python

NO_TEST =	Yes

# do not use ./setup.py to build
CONFIGURE_STYLE = no

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ${WRKSRC}/configure.py -o ${LOCALBASE}/lib

.include <bsd.port.mk>
