# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 22:02:32 martynas Exp $

COMMENT=		"template language for XML based vocabularies"

V=			0.9.5
DISTNAME=		kid-${V}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://www.kid-templating.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.kid-templating.org/dist/${V}/

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

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
