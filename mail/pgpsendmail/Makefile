# $OpenBSD: Makefile,v 1.24 2010/10/18 19:59:18 espie Exp $

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

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
