# $OpenBSD: Makefile,v 1.24 2018/05/29 19:34:31 landry Exp $

COMMENT=	graphical interface to sqlite databases

GH_ACCOUNT =	sqlitebrowser
GH_PROJECT =	sqlitebrowser
GH_TAGNAME =	v3.10.1
REVISION =	0

CATEGORIES=	databases x11

HOMEPAGE=	http://sqlitebrowser.org/

# MPLv2/GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Test Qt5Widgets c m sqlite3 qscintilla2_qt5

MODULES=	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	databases/sqlite3 \
		editors/qscintilla,qt5

RUN_DEPENDS =	x11/gtk+3,-guic \
		devel/desktop-file-utils

CONFIGURE_ARGS +=-DQSCINTILLA_INCLUDE_DIR=${LOCALBASE}/include/X11/qt5/Qsci

.include <bsd.port.mk>
