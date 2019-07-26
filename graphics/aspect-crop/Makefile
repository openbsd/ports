# $OpenBSD: Makefile,v 1.4 2019/07/26 13:07:14 espie Exp $

COMMENT =	crop tool for xwallpaper(1)
CATEGORIES = 	graphics
MAINTAINER = 	Marc Espie <espie@openbsd.org>

GH_PROJECT = 	aspect-crop
GH_TAGNAME = 	1.8
GH_ACCOUNT = 	marcespie

MODULES = x11/qt5

# BSD licence
PERMIT_PACKAGE= Yes
NO_TEST = 	Yes

MAKE_FLAGS += CXXOPTS='${CXXFLAGS}'
WANTLIB = ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets GL c m

do-configure:
	cd ${WRKDIST} && ${MODQT_QMAKE} aspect-crop.pro

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/aspect-crop ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/aspect-crop.1 ${PREFIX}/man/man1


.include <bsd.port.mk>
