# $OpenBSD: Makefile,v 1.18 2002/03/21 21:09:17 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"PGP sign/encrypt/decrypt messages automatically"

#BROKEN=		rethink mailwrapper mechanism
#BROKEN=		bombs in the fake process.  

DISTNAME=       PGPsendmail-v1.4.5
PKGNAME=	pgpsendmail-1.4.5
CATEGORIES=	mail
NEED_VERSION=	1.515
MASTER_SITES=   ftp://ftp.atnf.csiro.au/pub/people/rgooch/ \
		ftp://ftp.dhp.com/pub/crypto/pgp/PGPsendmail/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS += ::security/pgp

FAKE_FLAGS=MANDIR=${WRKINST}${PREFIX}/man

WRKDIST=         ${WRKDIR}/pgpsendmail
INSTALL_TARGET= all_install
MAN1=		pgppipe.1 sendpgppass.1
MAN8=		pgpsendmail.8 pgpdaemon.8

.include <bsd.port.mk>
