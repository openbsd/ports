# $OpenBSD: Makefile,v 1.10 2016/03/07 13:16:49 zhuk Exp $

COMMENT =	bug tracker client
DISTNAME =	entomologist-1.1
CATEGORIES =	productivity
REVISION =	0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=entomologist/}
HOMEPAGE =	http://entomologist.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/qt4

CONFIGURE_STYLE =	qmake
QMAKE_ARGS =		LOCALE_PREFIX=${PREFIX}
SEPARATE_BUILD =	No

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2 \
		x11/gtk+3,-guic
WANTLIB +=	QtGui QtNetwork QtSql QtXml c m pthread stdc++
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MAKE_FLAGS =	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/main.cpp

.include <bsd.port.mk>
