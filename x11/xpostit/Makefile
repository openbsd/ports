# OpenBSD makefile for:	xpostit
# Version required:	3.3.1
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.7 2000/03/24 22:12:06 espie Exp $
#

DISTNAME=	xpostit3.3.1
PKGNAME=	xpostit-3.3.1
CATEGORIES=	x11
NEED_VERSION=	1.191
#
# Not all servers archie could find actually still have it.  Alas, some
# servers only have the comp.sources.x version, with its distfile named
# `part01.gz'.
#
MASTER_SITES=	ftp://ftp.hrz.th-darmstadt.de/pub/X11/R5contrib/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
USE_IMAKE=	Yes
WRKDIST=	${WRKDIR}/xpostit

.include <bsd.port.mk>
