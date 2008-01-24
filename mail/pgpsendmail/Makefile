# $OpenBSD: Makefile,v 1.22 2008/01/24 18:31:24 merdely Exp $

COMMENT=	PGP sign/encrypt/decrypt messages automatically

V=1.4.5
DISTNAME=       PGPsendmail-v$V
PKGNAME=	pgpsendmail-$Vp0
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
