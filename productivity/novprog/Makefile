V =		3.2.2
COMMENT =	graphical wordcount grapher
DISTNAME =	novprog-${V}
EXTRACT_SUFX =	.tar.bz2
REVISION =	0
CATEGORIES =	productivity x11

HOMEPAGE =	https://gottcode.org/novprog/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m

.if ${MACHINE_ARCH:Mhppa}
WANTLIB += atomic
.endif

SITES =		https://gottcode.org/novprog/

MODULES =	devel/cmake \
		x11/qt6

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_FLAGS =	-DPROJECT_VERSION="${V}"

NO_TEST =	Yes

.include <bsd.port.mk>
