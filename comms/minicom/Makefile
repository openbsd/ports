# $OpenBSD: Makefile,v 1.7 1998/10/20 08:39:44 form Exp $
#

PKGNAME=	minicom-1.78
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms

#BROKEN=	"newer version available"

MAINTAINER=     form@OpenBSD.ORG

MASTER_SITES=	ftp://ftp.cistron.nl/pub/people/miquels/software/

RUN_DEPENDS=	rz:${PORTSDIR}/comms/rzsz \
		sz:${PORTSDIR}/comms/rzsz \
		kermit:${PORTSDIR}/comms/kermit

WRKSRC=		${WRKDIR}/${PKGNAME}/src

.include <bsd.port.mk>
