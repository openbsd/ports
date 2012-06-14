# $OpenBSD: Makefile,v 1.17 2012/06/14 09:47:23 landry Exp $

COMMENT =	gui for sqlite
CATEGORIES =	databases x11

DISTNAME =	sqliteman-1.2.0
REVISION =	4

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sqliteman/}
HOMEPAGE =	http://sourceforge.net/projects/sqliteman/

# GPL
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =		devel/cmake
CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	Yes

LIB_DEPENDS =	x11/qt4 \
		editors/qscintilla
WANTLIB +=	QtCore QtGui QtSql QtXml qscintilla2
WANTLIB +=	c m pthread stdc++

RUN_DEPENDS =	devel/desktop-file-utils


NO_REGRESS =	Yes

.include <bsd.port.mk>
