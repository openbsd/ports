# $OpenBSD: Makefile,v 1.8 2014/05/22 09:48:57 sebastia Exp $

COMMENT =	tool for inspecting compressed archvies

DISTNAME =	Zipper-1.5
REVISION =	2

HOMEPAGE =	http://gap.nongnu.org/zipper/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo

.include <bsd.port.mk>
