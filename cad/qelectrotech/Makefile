# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:45 sthen Exp $

COMMENT=	electric diagrams drawing tool

DISTNAME =	qelectrotech-0.61-src
PKGNAME = 	${DISTNAME:S/-src//}
CATEGORIES =	cad graphics
REVISION =      0

HOMEPAGE =	https://qelectrotech.org/
MASTER_SITES =	https://download.tuxfamily.org/qet/tags/20180823/

# GPLv2 / CC-BY 3.0 for the graphic elements
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
MODULES =	x11/qt5 devel/qmake

LIB_DEPENDS +=	x11/qt5/qtsvg

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml c m

RUN_DEPENDS =	misc/shared-mime-info \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
