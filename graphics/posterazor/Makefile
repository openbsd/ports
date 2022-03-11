COMMENT =	split large images into smaller ones to assemble posters

GH_ACCOUNT = 	aportale
GH_PROJECT = 	posterazor
GH_COMMIT = 	710d969a7c0ed7f1f062d6dd56c1134c34b6660b
DISTNAME = 	posterazor-1.9.7

CATEGORIES =	graphics

HOMEPAGE =	http://posterazor.sourceforge.net/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets c m

MODULES =		x11/qt5

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/src

FIX_CRLF_FILES = 	src/paintcanvas.cpp

do-configure:
	cd ${WRKSRC} && ${MODQT_QMAKE} posterazor.pro
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/PosteRazor ${PREFIX}/bin/posterazor

.include <bsd.port.mk>
