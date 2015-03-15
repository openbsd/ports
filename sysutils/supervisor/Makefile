# $OpenBSD: Makefile,v 1.2 2015/03/15 10:13:48 jasper Exp $

COMMENT=		system to monitor and control processes

MODPY_EGG_VERSION=	3.1.3
REVISION=0
DISTNAME=		supervisor-${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		http://supervisord.org/

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=s/supervisor/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		www/py-meld3
TEST_DEPENDS=		devel/py-mock \
			www/py-meld3

SUBST_VARS+=		VARBASE

pre-configure:
	${SUBST_CMD} ${WRKSRC}/supervisor/skel/sample.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supervisor/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/supervisor/

.include <bsd.port.mk>
