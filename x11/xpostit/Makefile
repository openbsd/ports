# OpenBSD makefile for:	xpostit
# Version required:	3.3.1
# Date created:		11 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.3 2000/02/12 06:30:09 turan Exp $
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
NEED_VERSION=	1.191

MAINTAINER=	don@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_IMAKE=	yes
WRKDIST=	${WRKDIR}/xpostit

.include <bsd.port.mk>
