# New ports collection makefile for:    minicom
# Version required:     1.78
# Date created:         5 May 1998
# Whom:                 form@vs.itam.nsc.ru
#
# $OpenBSD: Makefile,v 1.4 1998/05/06 03:36:37 form Exp $
#

PKGNAME=	minicom-1.78
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.cistron.nl/pub/people/miquels/software/

MAINTAINER=     form@vs.itam.nsc.ru

RUN_DEPENDS=	rz:${PORTSDIR}/comms/rzsz \
		sz:${PORTSDIR}/comms/rzsz \
		kermit:${PORTSDIR}/comms/kermit

WRKSRC=		${WRKDIR}/${PKGNAME}/src
MAN1=		minicom.1 runscript.1 ascii-xfr.1

.include <bsd.port.mk>
