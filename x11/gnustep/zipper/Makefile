# $OpenBSD: Makefile,v 1.16 2019/10/20 08:03:05 ajacoutot Exp $

COMMENT =	tool for inspecting compressed archvies

REVISION =	10
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
