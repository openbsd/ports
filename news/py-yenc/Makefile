# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:53 sthen Exp $

COMMENT=		yEnc encoding/decoding extension for Python

MODPY_EGG_VERSION=	0.4.0
DISTNAME=		yenc-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		news

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		pthread ${MODPY_WANTLIB}

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		news/py-yenc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-yenc
	${INSTALL_DATA} ${WRKSRC}/{README,doc/yenc-draft.1.3.txt} \
	    ${PREFIX}/share/doc/py-yenc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-yenc
	cd ${WRKSRC}/examples; tar -cf - * | \
	    (cd ${PREFIX}/share/examples/py-yenc; tar -xf -)

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} test.py

.include <bsd.port.mk>
