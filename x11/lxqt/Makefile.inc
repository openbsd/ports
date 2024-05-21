DIST_SUBDIR =	lxqt

VERSION ?=	2.0.0

DISTNAME ?=	${NAME}-${VERSION}

HOMEPAGE ?=	https://lxqt.github.io/

CATEGORIES ?=	x11/lxqt

MODULES ?=	x11/qt6 \
		devel/cmake

# Mostly LGPLv2.1, some GPLv2
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/lxqt/${NAME}/releases/download/${VERSION}/
EXTRACT_SUFX =	.tar.xz

NO_TEST ?=	Yes
