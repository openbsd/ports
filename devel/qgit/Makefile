# $OpenBSD: Makefile,v 1.9 2014/12/19 12:29:51 jca Exp $

COMMENT =	qt git repository viewer

# XXX also change MASTER_SITES when updating
DISTNAME =	qgit-2.5

CATEGORIES =	devel x11

HOMEPAGE =	http://libre.tibirna.org/projects/qgit

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread stdc++

MASTER_SITES =	http://libre.tibirna.org/attachments/download/9/

MODULES =	x11/qt4

RUN_DEPENDS =	devel/git

WRKSRC =	${WRKDIR}/redivivus

do-configure:
	cd ${WRKSRC} && qmake4 .

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/qgit ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qgit/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/qgit/

.include <bsd.port.mk>
