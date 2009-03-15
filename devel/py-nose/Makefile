# $OpenBSD: Makefile,v 1.8 2009/03/15 12:49:35 espie Exp $

COMMENT=		discovery-based unittest extension

MODPY_EGG_VERSION=	0.10.4
DISTNAME=		nose-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p0

CATEGORIES=		devel

HOMEPAGE=		http://somethingaboutorange.com/mrl/projects/nose/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://somethingaboutorange.com/mrl/projects/nose/

MODULES=		lang/python
REGRESS_DEPENDS=	::devel/py-nose \
			::devel/py-twisted/core

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-nose
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-nose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nose
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nose/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/py-nose/{} \;

do-regress:
	cd ${WRKSRC}/functional_tests && nosetests
	cd ${WRKSRC}/unit_tests && nosetests

.include <bsd.port.mk>
