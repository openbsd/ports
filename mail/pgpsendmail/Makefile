# $OpenBSD: Makefile,v 1.5 2000/02/11 00:37:29 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       PGPsendmail-v1.4.5
PKGNAME=	pgpsendmail-1.4.5
CATEGORIES=	mail
MASTER_SITES=   ftp://ftp.atnf.csiro.au/pub/people/rgooch/ \
		ftp://ftp.dhp.com/pub/crypto/pgp/PGPsendmail/
NEED_VERSION=	1.191

MAINTAINER=     ports@OpenBSD.ORG

BUILD_DEPENDS += pgp:${PORTSDIR}/security/pgp

WRKDIST=         ${WRKDIR}/pgpsendmail
INSTALL_TARGET= all_install
MAN1=		pgppipe.1 sendpgppass.1
MAN8=		pgpsendmail.8 pgpdaemon.8

.include <bsd.port.mk>
