# $OpenBSD: Makefile,v 1.1.1.1 2004/07/27 08:55:23 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"pixmap rendering for reportlab"

VERSION=	0.9
DISTNAME=	renderPM-${VERSION:S/./-/}
PKGNAME=	py-reportlab-renderPM-${VERSION}

MASTER_SITES=	http://www.reportlab.org/ftp/

LIB_DEPENDS=	art_lgpl_2.5::graphics/libart

WRKDIST=	${WRKDIR}

pre-build:
	@perl -pi -e 's#!!LOCALBASE!!#${LOCALBASE}#g' ${WRKSRC}/setup.py

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_renderPM.py

.include <bsd.port.mk>
