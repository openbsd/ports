# $OpenBSD: Makefile,v 1.1.1.1 2019/08/10 21:27:07 bcallah Exp $

COMMENT =	graphical wordcount grapher
DISTNAME =	novprog-3.1.6
EXTRACT_SUFX =	-src.tar.bz2
CATEGORIES =	productivity x11

HOMEPAGE =	https://gottcode.org/novprog/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

.if ${MACHINE_ARCH:Mhppa} || ${MACHINE_ARCH:Mpowerpc}
WANTLIB += atomic
.endif

MASTER_SITES =	https://gottcode.org/novprog/

MODULES =	devel/qmake \
		x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
