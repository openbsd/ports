# $OpenBSD: Makefile,v 1.1.1.1 2016/08/30 15:19:49 awolk Exp $

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

MASTER_SITES =		https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/fotowall/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/qmake x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils

pre-configure:
	@sed -i 's,/usr/,${TRUEPREFIX}/,' ${WRKSRC}/fotowall.pro
	@sed -i 's,${TRUEPREFIX}/share/man,${TRUEPREFIX}/man,' ${WRKSRC}/fotowall.pro

.include <bsd.port.mk>
