# $OpenBSD: Makefile,v 1.4 2006/08/03 23:28:11 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"pixmap rendering for reportlab"

VERSION=	0.9
DISTNAME=	renderPM-${VERSION:S/./-/}
PKGNAME=	py-reportlab-renderPM-${VERSION}p1

MASTER_SITES=	http://www.reportlab.org/ftp/

LIB_DEPENDS=	art_lgpl_2.>=5::graphics/libart

WRKDIST=	${WRKDIR}

pre-build:
	@perl -pi -e 's#!!LOCALBASE!!#${LOCALBASE}#g' ${WRKSRC}/setup.py

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_renderPM.py

.include <bsd.port.mk>
