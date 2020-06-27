# $OpenBSD: Makefile,v 1.16 2020/06/27 14:33:20 jasper Exp $

COMMENT=		system to monitor and control processes

MODPY_EGG_VERSION =	4.2.0
DISTNAME=		supervisor-${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		http://supervisord.org/

# BSD-derived
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
SUBST_VARS+=		VARBASE

pre-configure:
	${SUBST_CMD} ${WRKSRC}/supervisor/skel/sample.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supervisor/
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/supervisor/

.include <bsd.port.mk>
