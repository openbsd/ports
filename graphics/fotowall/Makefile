# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:58 sthen Exp $

COMMENT =	Pictures collage & creativity tool

DISTNAME =	Fotowall-0.9
PKGNAME =	${DISTNAME:L}
REVISION =	3

CATEGORIES =	graphics

HOMEPAGE =	http://www.enricoros.com/opensource/fotowall/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

PERMIT_PACKAGE =	Yes

WANTLIB += GL ICE QtGui QtNetwork QtOpenGL QtSvg QtXml SM X11
WANTLIB += Xext Xi Xinerama Xrender c fontconfig freetype m pthread
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=fotowall/}

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/qmake x11/qt4
RUN_DEPENDS =		devel/desktop-file-utils

pre-configure:
	@sed -i 's,/usr/,${TRUEPREFIX}/,' ${WRKSRC}/fotowall.pro
	@sed -i 's,${TRUEPREFIX}/share/man,${TRUEPREFIX}/man,' ${WRKSRC}/fotowall.pro

.include <bsd.port.mk>
