# OpenBSD makefile for:	xpostit
# Version required:	3.3.1
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/24 21:51:54 don Exp $
#

DISTNAME=	xpostit3.3.1
PKGNAME=	xpostit-3.3.1
CATEGORIES=	x11
#
# Not all servers archie could find actually still have it.  Alas, some
# servers only have the comp.sources.x version, with its distfile named
# `part01.gz'.
#
MASTER_SITES=	ftp://ftp.hrz.th-darmstadt.de/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	don@OpenBSD.ORG

USE_IMAKE=	yes
WRKSRC=		${WRKDIR}/xpostit

.include <bsd.port.mk>
