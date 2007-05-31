# $OpenBSD: Makefile,v 1.1.1.1 2007/05/31 13:28:51 martynas Exp $

COMMENT=		"discovery-based unittest extension"

DISTNAME=		nose-0.9.3
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://somethingaboutorange.com/mrl/projects/nose/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://somethingaboutorange.com/mrl/projects/nose/

MODULES=		lang/python
REGRESS_DEPENDS=	::devel/py-twisted/core

MAKE_ENV=		NOSE_WHERE=unit_tests

REGRESS_TARGET=		nosetests

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-nose
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-nose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nose
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nose/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/py-nose/{} \;

.include <bsd.port.mk>
