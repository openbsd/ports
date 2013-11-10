# $OpenBSD: Makefile,v 1.19 2013/11/10 22:28:59 sthen Exp $

COMMENT =	gui for sqlite
CATEGORIES =	databases x11

DISTNAME =	sqliteman-1.2.2

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sqliteman/}
HOMEPAGE =	http://sourceforge.net/projects/sqliteman/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += lib/qt4/QtCore lib/qt4/QtGui lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += c m qscintilla2 stdc++

MODULES =		devel/cmake
CONFIGURE_STYLE =	cmake

LIB_DEPENDS =	x11/qt4 \
		editors/qscintilla

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
