# $OpenBSD: Makefile,v 1.2 2009/01/02 13:07:37 djm Exp $

DISTNAME=	Plone-2.1.4
PKGNAME=	${DISTNAME:L}p1

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/* ${MODZOPE_PRODUCTSDIR}
	rm -fr ${MODZOPE_PRODUCTSDIR}/BTreeFolder2

.include <bsd.port.mk>
