# OpenBSD makefile for:    pgpsendmail
# Version required:     1.4
# Date created:         10 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.2 1997/11/17 21:47:30 joey Exp $
#

DISTNAME=       PGPsendmail-v1.4
PKGNAME=	pgpsendmail-1.4
CATEGORIES=	mail
MASTER_SITES=   ftp://ftp.dhp.com/pub/crypto/pgp/PGPsendmail/

MAINTAINER=     joey@OpenBSD.ORG

BUILD_DEPENDS += pgp:${PORTSDIR}/security/pgp

WRKSRC=         ${WRKDIR}/pgpsendmail
INSTALL_TARGET= all_install
MAN1=		pgppipe.1 sendpgppass.1
MAN8=		pgpsendmail.8 pgpdaemon.8

.include <bsd.port.mk>
