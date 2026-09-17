COMMENT =	tool for inspecting compressed archvies

REVISION =	15
DISTNAME =	Zipper-1.5

HOMEPAGE =	http://gap.nongnu.org/zipper/
SITES =		${SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS +=  archivers/7zip \
		archivers/lha \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo

.include <bsd.port.mk>
