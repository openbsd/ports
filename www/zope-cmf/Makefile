# $OpenBSD: Makefile,v 1.9 2004/02/04 15:57:27 xsa Exp $

COMMENT=	"Zope content management framework"

DISTNAME=	CMF-1.3.3
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://cmf.zope.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# Zope Public License (ZPL) 2.0 <http://www.zope.org/Resources/ZPL>
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/${DISTNAME}/

MODULES=	zope

DOCSDIR=	${PREFIX}/share/doc/zope-cmf

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	for p in Calendar Core Default Topic; do \
		cp -R ${WRKSRC}/CMF$$p ${MODZOPE_PRODUCTSDIR}; \
	done
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.{stx,txt} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/imgs
	${INSTALL_DATA} ${WRKSRC}/docs/imgs/* ${DOCSDIR}/imgs 

.include <bsd.port.mk>
