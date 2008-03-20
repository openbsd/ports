# $OpenBSD: Makefile,v 1.1 2008/03/20 11:42:34 winiger Exp $

DISTNAME=	Plone-2.5.3-final
PKGNAME=	${DISTNAME:S/-final//:L}p0

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/* ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
