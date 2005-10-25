# $OpenBSD: Makefile,v 1.4 2005/10/25 18:37:14 xsa Exp $

COMMENT=	"Zope folder-like product to store many more items"

DISTNAME=	BTreeFolder2-1.0.1
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://hathawaymix.org/Software/BTreeFolder2/

# ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	www/zope

WRKDIST=	${WRKDIR}/BTreeFolder2

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - BTreeFolder2 | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
