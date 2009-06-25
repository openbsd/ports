# $OpenBSD: Makefile,v 1.3 2009/06/25 01:22:10 jolan Exp $

COMMENT=	content management system built on top of Zope

DISTNAME=	Plone-3.0.6
PKGNAME=	${DISTNAME:L}p1

MASTER_SITES=		https://launchpad.net/plone/3.0/3.0.6/+download/

MODZOPE_VERSION=	2.10

RUN_DEPENDS=		::textproc/py-ElementTree

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/Products/* ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/lib/python/* ${MODZOPE_PRODUCTSDIR}/../
	rm ${MODZOPE_PRODUCTSDIR}/CMFCore/tests/fake_skins/fake_skin/test1.py~	

.include <bsd.port.mk>
