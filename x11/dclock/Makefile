# Makefile for:		dclock
# Version required:	pl4
# Date created:		15 Aug 1996
# Whom:			David Leonard <leonard@dstc.edu.au>
#
# $FreeBSD: ports/x11-clocks/dclock/Makefile,v 1.9 1999/08/31 06:52:30 mharo Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1999/11/08 14:14:42 dugsong Exp $

PKGNAME=	dclock-pl4

CATEGORIES=	x11

DISTNAME=	dclock
EXTRACT_SUFX=	.shar.Z

MASTER_SITES=	ftp://ftp.x.org/R5contrib/

MAINTAINER=	dugsong@monkey.org

USE_X11=	yes

EXTRACT_CMD=		${GZIP_CMD}
EXTRACT_BEFORE_ARGS=	-dc
EXTRACT_AFTER_ARGS=	|sh -

NO_CONFIGURE=	yes

NO_WRKSUBDIR=		yes

ALL_TARGET=		dclock

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dclock.man ${PREFIX}/man/man1/dclock.1

.include <bsd.port.mk>
