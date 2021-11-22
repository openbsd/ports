# $OpenBSD: Makefile.inc,v 1.6 2021/11/22 05:45:42 rsadowski Exp $

DIST_SUBDIR =	lxqt

VERSION ?=	1.0.0

DISTNAME ?=	${NAME}-${VERSION}

HOMEPAGE ?=	https://lxqt.github.io/

CATEGORIES ?=	x11/lxqt

MODULES +=	x11/qt5 \
		devel/cmake

# Mostly LGPLv2.1, some GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/lxqt/${NAME}/releases/download/${VERSION}/
EXTRACT_SUFX =	.tar.xz

NO_TEST ?=	Yes
