# $OpenBSD: Makefile,v 1.3 2012/07/08 14:03:55 sebastia Exp $

COMMENT =	tool for inspecting compressed archvies

DISTNAME =	Zipper-1.4

HOMEPAGE =	http://gap.nongnu.org/zipper/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += 	c m pthread
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip

post-extract:
	rm ${WRKSRC}/Resources/MainMenu-GNUstep.gsmarkup.orig \
		${WRKSRC}/PreferencesController.m.orig

.include <bsd.port.mk>
