# $OpenBSD: Makefile,v 1.4 2009/09/15 17:37:22 jasper Exp $

DISTNAME=	Plone-2.5.3-final
PKGNAME=	${DISTNAME:S/-final//:L}p3

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/* ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
