# OpenBSD makefile for:	xco
# Version required:	1.3
# Date created:		25 January 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/02/06 13:43:45 niklas Exp $
#

DISTNAME=	xco
PKGNAME=	xco-1.3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.cs.purdue.edu:/pub/bingle/

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
MAN1=		xco.1
DOCDIR=		${PREFIX}/share/doc/xco

post-install:
		@${MKDIR} ${DOCDIR}
		@${INSTALL_DATA} ${FILESDIR}/copyright ${DOCDIR}

.include <bsd.port.mk>
