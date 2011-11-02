# $OpenBSD: Makefile,v 1.17 2011/11/02 23:06:02 rpointel Exp $

COMMENT=		discovery-based unittest extension

MODPY_EGG_VERSION=	1.1.2
DISTNAME=		nose-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		http://somethingaboutorange.com/mrl/projects/nose/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=n/nose/}

BUILD_DEPENDS=		archivers/gtar
MODULES=		lang/python
REGRESS_DEPENDS=	devel/py-nose \
			devel/py-twisted/core \
			devel/py-coverage
USE_GROFF =		Yes

MODPY_SETUPTOOLS=	Yes

# problem with upstream tar and our tar
TAR=gtar

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-nose
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-nose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nose
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nose/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/py-nose/{} \;

do-regress:
	cd ${WRKSRC}/functional_tests && nosetests -v
	cd ${WRKSRC}/unit_tests && nosetests -v

.include <bsd.port.mk>
