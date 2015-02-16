# $OpenBSD: Makefile,v 1.27 2015/02/16 22:57:09 naddy Exp $

COMMENT=	PGP sign/encrypt/decrypt messages automatically

V=1.4.5
DISTNAME=       PGPsendmail-v$V
PKGNAME=	pgpsendmail-$V
REVISION =	0
CATEGORIES=	mail

MASTER_SITES=   ftp://ftp.atnf.csiro.au/pub/people/rgooch/ \
		ftp://ftp.dhp.com/pub/crypto/pgp/PGPsendmail/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

BUILD_DEPENDS=	security/pgp

WRKDIST=	${WRKDIR}/pgpsendmail
INSTALL_TARGET=	all_install

NO_TEST=	Yes

.include <bsd.port.mk>
