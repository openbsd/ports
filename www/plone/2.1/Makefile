# $OpenBSD: Makefile,v 1.1 2008/03/20 11:42:34 winiger Exp $

DISTNAME=	Plone-2.1.4
PKGNAME=	${DISTNAME:L}p0

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/* ${MODZOPE_PRODUCTSDIR}
	rm -fr ${MODZOPE_PRODUCTSDIR}/BTreeFolder2

.include <bsd.port.mk>
