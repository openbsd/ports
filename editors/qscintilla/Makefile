# $OpenBSD: Makefile,v 1.10 2013/03/11 11:02:50 espie Exp $

# XXX: Upstream doesn't keep old files; if updating please mirror or ask sthen@

COMMENT =	Qt4 port of the Scintilla source code editor

VERSION =	2.5.1
DISTNAME =	QScintilla-gpl-${VERSION}
REVISION=		0
PKGNAME =	qscintilla-${VERSION}
CATEGORIES =	editors x11

SHARED_LIBS =	qscintilla2 2.0

HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =  http://www.riverbankcomputing.com/static/Downloads/QScintilla2/ \
		http://spacehopper.org/mirrors/

MODULES = devel/gettext x11/qt4

WANTLIB =	ICE SM X11 Xext Xi Xinerama Xrender expat fontconfig \
		freetype glib-2.0 gobject-2.0 gthread-2.0 m png pthread-stubs \
		xcb z stdc++ QtCore QtGui

CONFIGURE_ENV =	HOME=${WRKDIR}
MAKE_FLAGS =	QMAKE_CXX=${CXX} QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}" \
		HOME=${WRKDIR} INSTALL_ROOT=${DESTDIR} \
		LIBqscintilla2_VERSION=${LIBqscintilla2_VERSION}

WRKSRC =	${WRKDIST}/Qt4

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qscintilla.pro

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4 \
		${MAKE_FLAGS} qscintilla.pro

.include <bsd.port.mk>
