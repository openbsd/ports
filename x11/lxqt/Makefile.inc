# $OpenBSD: Makefile.inc,v 1.4 2020/09/04 15:40:09 mariani Exp $

DIST_SUBDIR =	lxqt

HOMEPAGE ?=	https://lxqt.org/

CATEGORIES ?=	x11/lxqt

MODULES +=	x11/qt5 \
		devel/cmake

# Mostly LGPLv2.1, some GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/lxqt/${NAME}/releases/download/${VERSION}/
EXTRACT_SUFX =	.tar.xz

NO_TEST ?=	Yes
