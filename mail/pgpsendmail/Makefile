# $OpenBSD: Makefile,v 1.21 2007/09/16 00:17:06 merdely Exp $

COMMENT=	PGP sign/encrypt/decrypt messages automatically

DISTNAME=       PGPsendmail-v1.4.5
PKGNAME=	pgpsendmail-1.4.5
CATEGORIES=	mail

MASTER_SITES=   ftp://ftp.atnf.csiro.au/pub/people/rgooch/ \
		ftp://ftp.dhp.com/pub/crypto/pgp/PGPsendmail/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

BUILD_DEPENDS=	::security/pgp

WRKDIST=	${WRKDIR}/pgpsendmail
INSTALL_TARGET=	all_install
FAKE_FLAGS=	MANDIR=${WRKINST}${PREFIX}/man

NO_REGRESS=	Yes

.include <bsd.port.mk>
