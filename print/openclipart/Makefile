# $OpenBSD: Makefile,v 1.2 2005/10/30 15:55:33 ian Exp $

V=0.18

COMMENT=	'desktop publishing clip-art'
CATEGORIES=	print graphics
DISTNAME=	openclipart-$V
HOMEPAGE=	http://openclipart.org/
MASTER_SITES=	${HOMEPAGE}downloads/$V/
DISTFILES=	openclipart-$V-full.tar.bz2
WRKDIST=	${WRKDIR}/${DISTNAME}-full

# Public domain
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes

PKG_ARCH=	*
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@mkdir -p ${PREFIX}/share/openclipart/
	cp -Rp ${WRKDIST}/clipart/* ${PREFIX}/share/openclipart/

.include <bsd.port.mk>
