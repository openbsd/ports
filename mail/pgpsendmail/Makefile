# $OpenBSD: Makefile,v 1.26 2013/03/11 11:23:53 espie Exp $

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

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
