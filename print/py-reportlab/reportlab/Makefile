# $OpenBSD: Makefile,v 1.2 2004/08/03 21:31:07 xsa Exp $

COMMENT=	"PDF-generating toolkit for Python"

VERSION=	1.19
DISTNAME=	ReportLab_${VERSION:S/./_/}
PKGNAME=	py-reportlab-${VERSION}
CATEGORIES=	print graphics

HOMEPAGE=	http://www.reportlab.org/rl_toolkit.html

MAINTAINER=	Aleksander Piotrowski <aleksander.piotrowski@nic.com.pl>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.reportlab.org/ftp/
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

RUN_DEPENDS=	:py-Imaging-*:graphics/py-Imaging \
		::lang/python/${MODPY_VERSION},-expat 

WRKDIST=	${WRKDIR}/reportlab-${VERSION:S/./_/}
WRKSRC=		${WRKDIST}/reportlab

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::print/py-reportlab/plugins/renderPM 

do-regress: fake
	@cd ${WRKSRC}/test && \
		${MAKE_ENV} PYTHONPATH=${WRKDIST}:${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./runAll.py

.include <bsd.port.mk>
