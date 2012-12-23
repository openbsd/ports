# $OpenBSD: Makefile,v 1.6 2012/12/23 13:25:11 sthen Exp $

COMMENT =	bug tracker client
DISTNAME =	entomologist-0.6
REVISION=	4
CATEGORIES =	productivity

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=entomologist/}
HOMEPAGE =	http://entomologist.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/qt4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2 \
		x11/gtk+2,-guic
WANTLIB +=	QtGui QtNetwork QtSql QtXml c m pthread stdc++
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MAKE_FLAGS =	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"
FAKE_FLAGS =	INSTALL_ROOT=${DESTDIR}
CONFIGURE_ARGS =	PREFIX=${PREFIX}
NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/main.cpp

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/qmake4 ${CONFIGURE_ARGS}

.include <bsd.port.mk>
