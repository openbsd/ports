# OpenBSD makefile for:    pgpsendmail
# Version required:     1.4.5
# Date created:         10 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/04/10 20:49:14 provos Exp $
#

DISTNAME=       PGPsendmail-v1.4.5
PKGNAME=	pgpsendmail-1.4.5
CATEGORIES=	mail
MASTER_SITES=   ftp://ftp.atnf.csiro.au/pub/people/rgooch/ \
		ftp://ftp.dhp.com/pub/crypto/pgp/PGPsendmail/

MAINTAINER=     joey@OpenBSD.ORG

BUILD_DEPENDS += pgp:${PORTSDIR}/security/pgp

WRKSRC=         ${WRKDIR}/pgpsendmail
INSTALL_TARGET= all_install
MAN1=		pgppipe.1 sendpgppass.1
MAN8=		pgpsendmail.8 pgpdaemon.8

.include <bsd.port.mk>
