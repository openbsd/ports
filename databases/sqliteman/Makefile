# $OpenBSD: Makefile,v 1.18 2013/03/11 02:52:09 espie Exp $

COMMENT =	gui for sqlite
CATEGORIES =	databases x11

DISTNAME =	sqliteman-1.2.0
REVISION =	4

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sqliteman/}
HOMEPAGE =	http://sourceforge.net/projects/sqliteman/

# GPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake
CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	Yes

LIB_DEPENDS =	x11/qt4 \
		editors/qscintilla
WANTLIB +=	QtCore QtGui QtSql QtXml qscintilla2
WANTLIB +=	c m pthread stdc++

RUN_DEPENDS =	devel/desktop-file-utils


NO_TEST =	Yes

.include <bsd.port.mk>
