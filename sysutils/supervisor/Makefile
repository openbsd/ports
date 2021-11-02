# $OpenBSD: Makefile,v 1.20 2021/11/02 00:02:35 sthen Exp $

COMMENT=		system to monitor and control processes

MODPY_EGG_VERSION =	4.2.1
DISTNAME=		supervisor-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		sysutils

HOMEPAGE=		http://supervisord.org/

# BSD-derived
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

SUBST_VARS+=		VARBASE

pre-configure:
	${SUBST_CMD} ${WRKSRC}/supervisor/skel/sample.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supervisor/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/supervisor/

.include <bsd.port.mk>
