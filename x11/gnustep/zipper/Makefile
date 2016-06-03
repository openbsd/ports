# $OpenBSD: Makefile,v 1.12 2016/06/03 11:57:58 sebastia Exp $

COMMENT =	tool for inspecting compressed archvies

REVISION =	6
DISTNAME =	Zipper-1.5

HOMEPAGE =	http://gap.nongnu.org/zipper/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo

.include <bsd.port.mk>
