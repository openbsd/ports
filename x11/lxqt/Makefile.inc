# $OpenBSD: Makefile.inc,v 1.2 2019/05/05 17:09:07 naddy Exp $

DIST_SUBDIR =	lxqt

HOMEPAGE ?=	https://lxqt.org/

CATEGORIES ?=	x11/lxqt

MODULES +=	x11/qt5 \
		devel/cmake

# Mostly LGPLv2.1, some GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES +=	https://downloads.lxqt.org/downloads/${NAME}/${VERSION}/
EXTRACT_SUFX =	.tar.xz

NO_TEST ?=	Yes
