COMMENT =	tool for inspecting compressed archvies

REVISION =	13
DISTNAME =	Zipper-1.5

HOMEPAGE =	http://gap.nongnu.org/zipper/
SITES =		${SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo

.include <bsd.port.mk>
