# $OpenBSD: Makefile,v 1.5 1998/10/07 18:51:26 marc Exp $
#

PKGNAME=	minicom-1.78
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms

BROKEN=		"newer version available"

MAINTAINER=     form@vs.itam.nsc.ru

MASTER_SITES=	ftp://ftp.cistron.nl/pub/people/miquels/software/

RUN_DEPENDS=	rz:${PORTSDIR}/comms/rzsz \
		sz:${PORTSDIR}/comms/rzsz \
		kermit:${PORTSDIR}/comms/kermit

WRKSRC=		${WRKDIR}/${PKGNAME}/src

.include <bsd.port.mk>
