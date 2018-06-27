# $OpenBSD: Makefile,v 1.16 2018/06/27 21:04:01 espie Exp $

COMMENT =	bug tracker client
DISTNAME =	entomologist-1.1
CATEGORIES =	productivity
REVISION =	3

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=entomologist/}
HOMEPAGE =	https://sourceforge.net/projects/entomologist/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/qmake x11/qt4

SEPARATE_BUILD =	No

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2 \
		x11/gtk+3,-guic
WANTLIB +=	QtGui QtNetwork QtSql QtXml c m pthread ${COMPILER_LIBCXX}
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MAKE_FLAGS =	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/main.cpp

.include <bsd.port.mk>
