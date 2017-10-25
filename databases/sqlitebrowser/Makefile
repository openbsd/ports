# $OpenBSD: Makefile,v 1.23 2017/10/25 09:51:11 rsadowski Exp $

COMMENT=	graphical interface to sqlite databases

GH_ACCOUNT =	sqlitebrowser
GH_PROJECT =	sqlitebrowser
GH_TAGNAME =	v3.10.1

CATEGORIES=	databases x11

HOMEPAGE=	http://sqlitebrowser.org/

# MPLv2/GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Test Qt5Widgets c m sqlite3

MODULES=	x11/qt5 \
		devel/cmake

LIB_DEPENDS =	databases/sqlite3

RUN_DEPENDS =	x11/gtk+3,-guic \
		devel/desktop-file-utils

.include <bsd.port.mk>
