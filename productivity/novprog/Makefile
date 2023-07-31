COMMENT =	graphical wordcount grapher
DISTNAME =	novprog-3.2.2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	productivity x11

HOMEPAGE =	https://gottcode.org/novprog/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m

.if ${MACHINE_ARCH:Mhppa}
WANTLIB += atomic
.endif

MASTER_SITES =	https://gottcode.org/novprog/

MODULES =	devel/cmake \
		x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
