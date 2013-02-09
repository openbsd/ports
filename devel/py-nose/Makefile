# $OpenBSD: Makefile,v 1.22 2013/02/09 14:49:50 sthen Exp $

COMMENT=		discovery-based unittest extension

MODPY_EGG_VERSION=	1.1.2
DISTNAME=		nose-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1
CATEGORIES=		devel

HOMEPAGE=		http://readthedocs.org/docs/nose/en/latest/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=n/nose/}

BUILD_DEPENDS=		archivers/gtar
MODULES=		lang/python

FLAVORS=		python3
FLAVOR?=

.if ${FLAVOR:Mpython3}
NO_REGRESS=		Yes
.else
REGRESS_DEPENDS=	devel/py-nose \
			devel/py-twisted/core \
			devel/py-coverage
.endif

USE_GROFF =		Yes

MODPY_SETUPTOOLS=	Yes

# problem with upstream tar and our tar
TAR=${LOCALBASE}/bin/gtar

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}nose
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/${MODPY_PY_PREFIX}nose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} \
			${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} \
			${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose/{} \;
	rm ${PREFIX}/bin/nosetests-${MODPY_VERSION}
.if ${FLAVOR:Mpython3}
	mv ${PREFIX}/bin/nosetests \
		${PREFIX}/bin/nosetests${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/nosetests.1 \
		${PREFIX}/man/man1/nosetests${MODPY_BIN_SUFFIX}.1
.endif


do-regress:
	cd ${WRKSRC}/functional_tests && nosetests -v
	cd ${WRKSRC}/unit_tests && nosetests -v

.include <bsd.port.mk>
