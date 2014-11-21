# $OpenBSD: Makefile,v 1.9 2014/11/21 18:21:23 sebastia Exp $

COMMENT =	tool for inspecting compressed archvies

DISTNAME =	Zipper-1.5
REVISION =	3

HOMEPAGE =	http://gap.nongnu.org/zipper/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo

.include <bsd.port.mk>
