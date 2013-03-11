# $OpenBSD: Makefile,v 1.14 2013/03/11 11:37:54 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	pixmap rendering for reportlab

VERSION=	0.9
DISTNAME=	renderPM-${VERSION:S/./-/}
PKGNAME=	py-reportlab-renderPM-${VERSION}
REVISION =	7

MASTER_SITES=	http://www.reportlab.org/ftp/
WANTLIB =	art_lgpl_2>=5

LIB_DEPENDS=	graphics/libart

WRKDIST=	${WRKDIR}

pre-build:
	@perl -pi -e 's#!!LOCALBASE!!#${LOCALBASE}#g' ${WRKSRC}/setup.py

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_renderPM.py

.include <bsd.port.mk>
