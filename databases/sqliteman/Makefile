# $OpenBSD: Makefile,v 1.10 2009/08/10 06:31:07 kili Exp $

COMMENT =	gui for sqlite
CATEGORIES =	databases x11

DISTNAME =	sqliteman-1.2.0
PKGNAME =	${DISTNAME}p0
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sqliteman/}
HOMEPAGE =	http://sourceforge.net/projects/sqliteman/

#GPL
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =	ICE SM X11 Xext Xi Xinerama Xrandr Xrender \
		c fontconfig freetype m pthread stdc++ z png glib-2.0 \
		gthread-2.0 pthread-stubs xcb

MODULES =		devel/cmake
CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	simple

LIB_DEPENDS =	QtCore,QtGui,QtSql,QtXml::x11/qt4 \
		qscintilla2::editors/qscintilla

RUN_DEPENDS =	::x11/qt4,-sqlite \
		:desktop-file-utils-*:devel/desktop-file-utils


NO_REGRESS =	Yes

.include <bsd.port.mk>
