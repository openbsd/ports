# $OpenBSD: Makefile,v 1.1.1.1 2008/10/27 00:01:45 bernd Exp $

COMMENT =	Qt4 port of the Scintilla source code editor

VERSION =	2.3
DISTNAME =	QScintilla-gpl-${VERSION}
PKGNAME =	qscintilla-${VERSION}
CATEGORIES =	editors x11

SHARED_LIBS =	qscintilla2 0.0

HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES = http://www.riverbankcomputing.com/static/Downloads/QScintilla2/

MODULES = devel/gettext x11/qt4

WANTLIB =	ICE SM X11 Xext Xi Xinerama Xrandr Xrender fontconfig \
		freetype glib-2.0 gthread-2.0 m png z

LIB_DEPENDS =	QtCore,QtGui::x11/qt4

CONFIGURE_ENV =	HOME=${WRKDIR}
MAKE_FLAGS =	QMAKE_CXX=${CXX} QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}" \
		HOME=${WRKDIR} INSTALL_ROOT=${DESTDIR} \
		LIBqscintilla2_VERSION=${LIBqscintilla2_VERSION}

WRKSRC = ${WRKDIST}/Qt4

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qscintilla.pro

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4 \
		${MAKE_FLAGS} qscintilla.pro

.include <bsd.port.mk>
