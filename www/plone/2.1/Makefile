# $OpenBSD: Makefile,v 1.3 2009/09/15 17:37:22 jasper Exp $

DISTNAME=	Plone-2.1.4
PKGNAME=	${DISTNAME:L}p2

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/* ${MODZOPE_PRODUCTSDIR}
	rm -fr ${MODZOPE_PRODUCTSDIR}/BTreeFolder2

.include <bsd.port.mk>
