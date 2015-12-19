# $OpenBSD: Makefile,v 1.17 2015/12/19 20:47:03 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	pixmap rendering for reportlab

VERSION=	0.9
DISTNAME=	renderPM-${VERSION:S/./-/}
PKGNAME=	py-reportlab-renderPM-${VERSION}
REVISION=	9

MASTER_SITES=	http://www.reportlab.org/ftp/

WANTLIB =	art_lgpl_2>=5 ${MODPY_WANTLIB} pthread

LIB_DEPENDS=	graphics/libart

WRKDIST=	${WRKDIR}

pre-build:
	@perl -pi -e 's#!!LOCALBASE!!#${LOCALBASE}#g' ${WRKSRC}/setup.py

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_renderPM.py

.include <bsd.port.mk>
