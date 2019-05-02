# $OpenBSD: Makefile,v 1.1.1.1 2019/05/02 03:34:39 bentley Exp $

COMMENT =	an universal GUI for SPICE and not-SPICE circuit simulators

V =		0.0.21
DISTNAME =	qucs-s-${V}

CATEGORIES =	cad
HOMEPAGE =	https://ra3xdh.github.io/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

MASTER_SITES =	https://github.com/ra3xdh/qucs_s/releases/download/${V}/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 	${COMPILER_LIBCXX} Qt3Support QtGui QtScript QtSvg QtXml c m

# C++
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		x11/qt4

RUN_DEPENDS =	cad/ngspice \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
