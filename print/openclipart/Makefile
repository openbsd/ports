# $OpenBSD: Makefile,v 1.1.1.1 2005/09/04 23:05:50 espie Exp $

V=0.16

COMMENT=	'desktop publishing clip-art'
CATEGORIES=	print graphics
DISTNAME=	openclipart-$V
HOMEPAGE=	http://openclipart.org/
MASTER_SITES=	${HOMEPAGE}downloads/$V/
DISTFILES=	openclipart-$V-full.tar.bz2

# Public domain
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes

PKG_ARCH=	*
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cp -Rp ${WRKDIST} ${PREFIX}/share/openclipart/

.include <bsd.port.mk>
