# $OpenBSD: Makefile,v 1.2 2009/03/24 18:14:10 jasper Exp $

COMMENT=		yEnc encoding/decoding extension for Python

DISTNAME=		yenc-0.3
PKGNAME=		py-${DISTNAME}p0
CATEGORIES=		news

HOMEPAGE=		http://www.hellanzb.com/
MASTER_SITES=		${HOMEPAGE}hellanzb-content/

MAINTAINER=		Mikko Tolmunen <oskari@sefirosu.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

REGRESS_DEPENDS=	::news/py-yenc

CFLAGS+=		-g -O2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-yenc
	${INSTALL_DATA} ${WRKSRC}/{README,doc/yenc-draft.1.3.txt} \
	    ${PREFIX}/share/doc/py-yenc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-yenc
	cd ${WRKSRC}/examples; tar -cf - * | \
	    (cd ${PREFIX}/share/examples/py-yenc; tar -xf -)

do-regress:
	cd ${WRKSRC}/test && ${MODPY_BIN} test.py

.include <bsd.port.mk>
