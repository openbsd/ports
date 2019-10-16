# $OpenBSD: Makefile,v 1.15 2019/10/16 13:45:07 ajacoutot Exp $

COMMENT =	tool for inspecting compressed archvies

REVISION =	9
DISTNAME =	Zipper-1.5

HOMEPAGE =	http://gap.nongnu.org/zipper/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo

.include <bsd.port.mk>
