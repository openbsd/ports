# OpenBSD makefile for:		agrep
# Version required:     	  2.04
# Date created:			  Fri May 23, 1997
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/02 00:24:30 angelos Exp $
#

DISTNAME=	agrep-2.04
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.cs.arizona.edu/agrep/
EXTRACT_SUFX=	.tar.Z
#DISTFILES=	${DISTNAME}.${EXTRACT_SUFX} agrep.ps.1.Z  agrep.ps.2.Z

MAINTAINER=     angelos@openbsd.org

ALL_TARGET=
MAN1=		agrep.1

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/agrep ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/agrep.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/agrep
	@${INSTALL_MAN} ${WRKSRC}/agrep.algorithms ${PREFIX}/share/doc/agrep
.endif

.include <bsd.port.mk>
