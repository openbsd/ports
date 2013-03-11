# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:59 espie Exp $

COMMENT=		yEnc encoding/decoding extension for Python

DISTNAME=		yenc-0.3
PKGNAME=		py-${DISTNAME}
REVISION =		4
CATEGORIES=		news

HOMEPAGE=		http://www.hellanzb.com/
MASTER_SITES=		${HOMEPAGE}hellanzb-content/

MAINTAINER=		Mikko Tolmunen <oskari@sefirosu.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

WANTLIB=		${MODPY_WANTLIB}

TEST_DEPENDS=	news/py-yenc

CFLAGS+=		-g -O2

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
