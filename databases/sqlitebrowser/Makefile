# $OpenBSD: Makefile,v 1.31 2020/06/19 19:54:24 kn Exp $

COMMENT =	graphical interface to sqlite databases

GH_ACCOUNT =	sqlitebrowser
GH_PROJECT =	sqlitebrowser
GH_TAGNAME =	3.12.0

CATEGORIES =	databases x11

HOMEPAGE =	https://sqlitebrowser.org/

# MPLv2/GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Test Qt5Widgets Qt5Xml c m qscintilla2_qt5
WANTLIB += sqlite3

MODULES =	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	databases/sqlite3 \
		editors/qscintilla

RUN_DEPENDS =	x11/gtk+3,-guic \
		devel/desktop-file-utils

CONFIGURE_ARGS +=-DQSCINTILLA_INCLUDE_DIR=${LOCALBASE}/include/X11/qt5/Qsci

.include <bsd.port.mk>
