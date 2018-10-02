# $OpenBSD: Makefile,v 1.1.1.1 2018/10/02 16:41:53 landry Exp $

COMMENT=	electric diagrams drawing tool

DISTNAME =	qelectrotech-0.61-src
PKGNAME = 	${DISTNAME:S/-src//}
CATEGORIES =	cad graphics

HOMEPAGE =	https://qelectrotech.org/
MASTER_SITES =	https://download.tuxfamily.org/qet/tags/20180823/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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
