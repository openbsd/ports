# $OpenBSD: Makefile,v 1.6 2020/03/14 06:39:03 rsadowski Exp $

COMMENT =	an universal GUI for SPICE and not-SPICE circuit simulators

V =		0.0.22
DISTNAME =	qucs-s-${V}

CATEGORIES =	cad
HOMEPAGE =	https://ra3xdh.github.io/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

MASTER_SITES =	https://github.com/ra3xdh/qucs_s/releases/download/${V}/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} Qt3Support QtGui QtScript QtSvg QtXml c m

# C++
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		x11/qt4

RUN_DEPENDS =	cad/ngspice/ngspice \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes

post-extract:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' CMakeLists.txt

.include <bsd.port.mk>
