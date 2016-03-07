# $OpenBSD: Makefile,v 1.19 2016/03/07 12:28:33 zhuk Exp $

COMMENT =	powerful and simple qt4 editor

V =		33.3.0
DISTNAME =	tea-${V}
PKGNAME =	teaqt-${V}
CATEGORIES =	editors x11
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	http://tea-editor.sf.net/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

LIB_DEPENDS =	textproc/aspell/core
WANTLIB += c m pthread stdc++ z QtGui QtXml aspell
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MODULES =	x11/qt4
CONFIGURE_ENV =	USE_ASPELL=true USE_HUNSPELL=false

CONFIGURE_STYLE =	qmake

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/tea ${PREFIX}/bin/tea

.include <bsd.port.mk>
