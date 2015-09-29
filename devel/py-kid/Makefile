# $OpenBSD: Makefile,v 1.11 2015/09/29 10:51:54 sthen Exp $

COMMENT=		template language for XML based vocabularies

VERSION=		0.9.6
DISTNAME=		kid-${VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		4

CATEGORIES=		devel

HOMEPAGE=		http://www.kid-templating.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.kid-templating.org/dist/${VERSION}/

MODULES=		lang/python

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

pre-configure:
	rm -fr ${WRKSRC}/doc/html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-kid
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-kid/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-kid
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-kid/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/examples/py-kid/{} \;

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
