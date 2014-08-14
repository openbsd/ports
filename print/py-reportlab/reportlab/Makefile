# $OpenBSD: Makefile,v 1.24 2014/08/14 07:06:00 ajacoutot Exp $

COMMENT=	PDF-generating toolkit for Python

VERSION=	2.1
DISTNAME=	ReportLab_${VERSION:S/./_/}
PKGNAME=	py-reportlab-${VERSION}
REVISION =	10
EPOCH=		0
CATEGORIES=	print graphics

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		rl_accel-0.61-daily-unix${EXTRACT_SUFX}:0

HOMEPAGE=	http://www.reportlab.org/rl_toolkit.html

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD, LGPLv2, MPL1.0, MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.reportlab.org/ftp/
MASTER_SITES0=	https://distfiles.bsdfrog.org/
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

RUN_DEPENDS=	graphics/py-Pillow

WRKDIST=	${WRKDIR}/reportlab_${VERSION:S/./_/}
WRKSRC=		${WRKDIST}/reportlab

TEST_DEPENDS=${RUN_DEPENDS} \
		print/py-reportlab/plugins/renderPM 

post-extract:
	@mv ${WRKDIR}/rl_accel-*/rl_accel ${WRKSRC}/rl_accel

do-test: fake
	@cd ${WRKSRC}/test && \
		${MAKE_ENV} PYTHONPATH=${WRKDIST}:${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./runAll.py

.include <bsd.port.mk>
