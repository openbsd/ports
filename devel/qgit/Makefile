# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:57 sthen Exp $

COMMENT =	qt git repository viewer

# XXX also change MASTER_SITES when updating
DISTNAME =	qgit-2.5
REVISION =	1

CATEGORIES =	devel x11

HOMEPAGE =	http://libre.tibirna.org/projects/qgit

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	http://libre.tibirna.org/attachments/download/9/

MODULES =	devel/qmake x11/qt4

RUN_DEPENDS =	devel/git

WRKSRC =	${WRKDIR}/redivivus

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/qgit ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qgit/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/qgit/

.include <bsd.port.mk>
