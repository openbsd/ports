# OpenBSD makefile for:		agrep
# Version required:     	  2.04
# Date created:			  December 1, 1997
# Whom:				  Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.7 2000/10/22 15:43:33 espie Exp $
#

DISTNAME=	agrep-2.04
CATEGORIES=	textproc
NO_CDROM=	"NOFEE:	Can not sell"

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

MASTER_SITES=	ftp://ftp.cs.arizona.edu/agrep/
EXTRACT_SUFX=	.tar.Z
#DISTFILES=	${DISTNAME}.${EXTRACT_SUFX} agrep.ps.1.Z  agrep.ps.2.Z

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

ALL_TARGET=
MAN1=		agrep.1
MAKE_FLAGS=	CFLAGS=${CFLAGS}

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/agrep ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/agrep.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/agrep
	@${INSTALL_MAN} ${WRKSRC}/agrep.algorithms ${PREFIX}/share/doc/agrep
.endif

.include <bsd.port.mk>
