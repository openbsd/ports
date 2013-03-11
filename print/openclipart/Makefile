# $OpenBSD: Makefile,v 1.12 2013/03/11 11:37:54 espie Exp $

COMMENT=	desktop publishing clip-art

V=		2.0
DISTNAME=	openclipart-$V-full
PKGNAME=	${DISTNAME:S/-full//}
CATEGORIES=	print graphics

HOMEPAGE=	http://openclipart.org/

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/downloads/$V/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	archivers/bzip2

EXTRACT_ONLY=
PKG_ARCH=	*
NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openclipart/
	tar -xjf ${FULLDISTDIR}/${DISTFILES} \
	    -C ${PREFIX}/share -s ',^openclipart-$V-full,openclipart,'
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/openclipart/
	find ${PREFIX}/share/openclipart -type f -print0 | \
	    xargs -0 chmod a-x

.include <bsd.port.mk>
