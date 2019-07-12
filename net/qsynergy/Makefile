# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:47 sthen Exp $

COMMENT=		GUI for synergy

DISTNAME=		qsynergy-0.9.1
REVISION=		4
CATEGORIES=		net x11

HOMEPAGE=		http://sourceforge.net/projects/qsynergy/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qsynergy/}

MODULES=		devel/qmake x11/qt4

WANTLIB += 		ICE QtGui QtNetwork SM X11 Xext Xi Xinerama Xrender
WANTLIB += 		c fontconfig freetype m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=		devel/desktop-file-utils \
			net/synergy

pre-configure:
	@perl -pi -e 's,/usr,${LOCALBASE},g' ${WRKSRC}/src/AppConfig.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/qsynergy ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/dist/qsynergy.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dist/debian/qsynergy.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
