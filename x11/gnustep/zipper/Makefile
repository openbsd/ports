# $OpenBSD: Makefile,v 1.6 2013/07/18 14:30:07 sebastia Exp $

COMMENT =	tool for inspecting compressed archvies

DISTNAME =	Zipper-1.5
REVISION =	0

HOMEPAGE =	http://gap.nongnu.org/zipper/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += 	c m pthread
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip \
		archivers/zoo
		
.include <bsd.port.mk>
