# $OpenBSD: Makefile,v 1.15 2015/08/19 20:13:59 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	pixmap rendering for reportlab

VERSION=	0.9
DISTNAME=	renderPM-${VERSION:S/./-/}
PKGNAME=	py-reportlab-renderPM-${VERSION}
REVISION=	7

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
