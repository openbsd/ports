# $OpenBSD: Makefile,v 1.5 2019/11/01 11:09:55 sthen Exp $

COMMENT =	an universal GUI for SPICE and not-SPICE circuit simulators

V =		0.0.21
DISTNAME =	qucs-s-${V}
REVISION =	2

CATEGORIES =	cad
HOMEPAGE =	https://ra3xdh.github.io/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

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
