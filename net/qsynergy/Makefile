# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:55 espie Exp $

COMMENT=		GUI for synergy

DISTNAME=		qsynergy-0.9.1
REVISION=		0
CATEGORIES=		net x11

HOMEPAGE=		http://sourceforge.net/projects/qsynergy/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=qsynergy/}

MODULES=		x11/qt4

WANTLIB += QtGui QtNetwork c m pthread stdc++

RUN_DEPENDS=		devel/desktop-file-utils \
			net/synergy

pre-configure:
	@perl -pi -e 's,/usr,${LOCALBASE},g' ${WRKSRC}/src/AppConfig.cpp
	@cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/qsynergy ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/dist/qsynergy.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dist/debian/qsynergy.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
