# $OpenBSD: Makefile,v 1.1.1.1 2004/05/10 15:38:02 xsa Exp $

COMMENT=	"Zope folder-like product to store many more items"

DISTNAME=	BTreeFolder2-1.0
PKGNAME=	zope-${DISTNAME:L:S/_/./}
CATEGORIES=	www

HOMEPAGE=	http://hathaway.freezope.org/Software/BTreeFolder2/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	zope

WRKDIST=	${WRKDIR}/BTreeFolder2

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - BTreeFolder2 | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
