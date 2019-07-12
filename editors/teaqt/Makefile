# $OpenBSD: Makefile,v 1.26 2019/07/12 20:46:06 sthen Exp $

COMMENT =	powerful and simple qt4 editor

V =		33.3.0
REVISION =	2
DISTNAME =	tea-${V}
PKGNAME =	teaqt-${V}
CATEGORIES =	editors x11
MASTER_SITES =	http://semiletov.org/tea/dloads/ \
		${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	http://semiletov.org/tea/

# GPLv3
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =	textproc/aspell/core
WANTLIB += c m pthread ${COMPILER_LIBCXX} z QtGui QtXml aspell
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/qmake x11/qt4
CONFIGURE_ENV =	USE_ASPELL=true USE_HUNSPELL=false

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/tea ${PREFIX}/bin/tea

.include <bsd.port.mk>
