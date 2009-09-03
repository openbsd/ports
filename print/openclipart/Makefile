# $OpenBSD: Makefile,v 1.8 2009/09/03 06:49:55 jasper Exp $

COMMENT=	desktop publishing clip-art

V=0.19
DISTNAME=	openclipart-$V
CATEGORIES=	print graphics

HOMEPAGE=	http://openclipart.org/

# Public domain
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/downloads/$V/
EXTRACT_SUFX=	.tar.bz2

PKG_ARCH=	*
NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openclipart/
	cp -Rp ${WRKSRC}/* ${PREFIX}/share/openclipart/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/openclipart/

.include <bsd.port.mk>
