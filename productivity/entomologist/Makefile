# $OpenBSD: Makefile,v 1.13 2017/04/18 16:52:33 landry Exp $

COMMENT =	bug tracker client
DISTNAME =	entomologist-1.1
CATEGORIES =	productivity
REVISION =	1

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=entomologist/}
HOMEPAGE =	https://sourceforge.net/projects/entomologist/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/qmake x11/qt4

SEPARATE_BUILD =	No

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2 \
		x11/gtk+3,-guic
WANTLIB +=	QtGui QtNetwork QtSql QtXml c m pthread ${LIBCXX}
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MAKE_FLAGS =	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/main.cpp

.include <bsd.port.mk>
