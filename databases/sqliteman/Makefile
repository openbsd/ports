# $OpenBSD: Makefile,v 1.23 2017/04/10 11:45:25 sthen Exp $

COMMENT =	gui for sqlite
CATEGORIES =	databases x11

DISTNAME =	sqliteman-1.2.2
REVISION =	1

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sqliteman/}
HOMEPAGE =	http://sourceforge.net/projects/sqliteman/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lib/qt4/QtCore lib/qt4/QtGui lib/qt4/QtSql lib/qt4/QtXml m
WANTLIB += pthread qscintilla2 ${LIBCXX}

MODULES =		devel/cmake

LIB_DEPENDS =	x11/qt4 \
		editors/qscintilla

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
