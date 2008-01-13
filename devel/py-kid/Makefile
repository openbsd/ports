# $OpenBSD: Makefile,v 1.5 2008/01/13 17:24:11 martynas Exp $

COMMENT=		template language for XML based vocabularies

VERSION=		0.9.6
DISTNAME=		kid-${VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		http://www.kid-templating.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
