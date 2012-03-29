# $OpenBSD: Makefile,v 1.16 2012/03/29 13:38:13 sthen Exp $

COMMENT =	gui for sqlite
CATEGORIES =	databases x11

DISTNAME =	sqliteman-1.2.0
REVISION =	3

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

RUN_DEPENDS =	x11/qt4,-sqlite \
		devel/desktop-file-utils


NO_REGRESS =	Yes

.include <bsd.port.mk>
