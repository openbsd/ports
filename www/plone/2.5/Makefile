# $OpenBSD: Makefile,v 1.3 2009/06/25 15:40:43 naddy Exp $

DISTNAME=	Plone-2.5.3-final
PKGNAME=	${DISTNAME:S/-final//:L}p2

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/* ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
