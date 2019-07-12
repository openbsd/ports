# $OpenBSD: Makefile,v 1.43 2019/07/12 20:46:06 sthen Exp $

COMMENT=		LaTeX development environment
DISTNAME=		texmaker-5.0.2
CATEGORIES=		editors
REVISION=		1

HOMEPAGE=		http://www.xm1math.net/texmaker/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Script Qt5Widgets Qt5Xml c hunspell-1.6 m

# c++-11 for required for poppler
COMPILER=		base-clang ports-gcc

MODULES=		devel/qmake x11/qt5
MODQMAKE_ARGS=		DESKTOPDIR=${LOCALBASE}/share/applications \
			ICONDIR=${LOCALBASE}/share/pixmaps

RUN_DEPENDS=		print/texlive/base \
			devel/desktop-file-utils

LIB_DEPENDS=		textproc/hunspell \
			x11/qt5/qtscript,-main

NO_TEST=		Yes

.include <bsd.port.mk>
