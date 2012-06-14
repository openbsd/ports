# $OpenBSD: Makefile,v 1.4 2012/06/14 09:47:23 landry Exp $

COMMENT =	bug tracker client
DISTNAME =	entomologist-0.6
REVISION=	2
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
