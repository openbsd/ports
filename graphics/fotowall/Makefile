# $OpenBSD: Makefile,v 1.2 2016/10/01 11:54:15 naddy Exp $

COMMENT =	Pictures collage & creativity tool

DISTNAME =	Fotowall-0.9
PKGNAME =	${DISTNAME:L}

CATEGORIES =	graphics

HOMEPAGE =	http://www.enricoros.com/opensource/fotowall/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE QtGui QtNetwork QtOpenGL QtSvg QtXml SM X11
WANTLIB += Xext Xi Xinerama Xrender c fontconfig freetype m pthread
WANTLIB += stdc++

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=fotowall/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/qmake x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils

pre-configure:
	@sed -i 's,/usr/,${TRUEPREFIX}/,' ${WRKSRC}/fotowall.pro
	@sed -i 's,${TRUEPREFIX}/share/man,${TRUEPREFIX}/man,' ${WRKSRC}/fotowall.pro

.include <bsd.port.mk>
