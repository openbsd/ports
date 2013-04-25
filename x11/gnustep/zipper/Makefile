# $OpenBSD: Makefile,v 1.5 2013/04/25 16:35:36 sebastia Exp $

COMMENT =	tool for inspecting compressed archvies

DISTNAME =	Zipper-1.5

HOMEPAGE =	http://gap.nongnu.org/zipper/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += 	c m pthread
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unace \
		archivers/unarj \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo
		
.include <bsd.port.mk>
