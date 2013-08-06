# $OpenBSD: Makefile,v 1.8 2013/08/06 19:01:58 landry Exp $

COMMENT =	bug tracker client
DISTNAME =	entomologist-1.1
CATEGORIES =	productivity

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=entomologist/}
HOMEPAGE =	http://entomologist.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/qt4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2 \
		x11/gtk+2,-guic
WANTLIB +=	QtGui QtNetwork QtSql QtXml c m pthread stdc++
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MAKE_FLAGS =	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"
FAKE_FLAGS =	INSTALL_ROOT=${DESTDIR}
CONFIGURE_ARGS =	PREFIX=${PREFIX} LOCALE_PREFIX=${TRUEPREFIX}
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/main.cpp

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/qmake4 ${CONFIGURE_ARGS}

.include <bsd.port.mk>
