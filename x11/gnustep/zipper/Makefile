# $OpenBSD: Makefile,v 1.1.1.1 2011/07/19 13:58:02 sebastia Exp $

COMMENT =	tool for inspecting compressed archvies

DISTNAME =	Zipper-1.3

HOMEPAGE =	http://xanthippe.dyndns.org/Zipper/
MASTER_SITES =	${HOMEPAGE}

MODULES =	x11/gnustep
WANTLIB += 	c m pthread Renaissance
LIB_DEPENDS +=	x11/gnustep/renaissance
RUN_DEPENDS +=  archivers/lha \
		archivers/p7zip \
		archivers/unrar \
		archivers/unzip

WRKDIST =	${WRKDIR}/Zipper

.include <bsd.port.mk>
