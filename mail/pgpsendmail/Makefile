# $OpenBSD: Makefile,v 1.8 2000/02/20 22:41:35 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

BROKEN=		installs files in /usr.  Needs to be moved to /usr/local.

DISTNAME=       PGPsendmail-v1.4.5
PKGNAME=	pgpsendmail-1.4.5
CATEGORIES=	mail
MASTER_SITES=   ftp://ftp.atnf.csiro.au/pub/people/rgooch/ \
		ftp://ftp.dhp.com/pub/crypto/pgp/PGPsendmail/
NEED_VERSION=	1.191

MAINTAINER=     ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

BUILD_DEPENDS += pgp:${PORTSDIR}/security/pgp

WRKDIST=         ${WRKDIR}/pgpsendmail
INSTALL_TARGET= all_install
MAN1=		pgppipe.1 sendpgppass.1
MAN8=		pgpsendmail.8 pgpdaemon.8

.include <bsd.port.mk>
