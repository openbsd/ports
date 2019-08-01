# $OpenBSD: Makefile,v 1.7 2019/08/01 19:40:31 rsadowski Exp $

COMMENT =	Qt-based directory statistics

GH_ACCOUNT =	shundhammer
GH_PROJECT =	qdirstat
GH_TAGNAME =	1.6

CATEGORIES =	x11

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m
WANTLIB += z

MODULES =	devel/qmake \
		x11/qt5

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic

MODQMAKE_ARGS +=	INSTALL_PREFIX=${PREFIX}

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/qdirstat ${PREFIX}/bin/

.include <bsd.port.mk>
