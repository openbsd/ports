# $OpenBSD: Makefile,v 1.4 2007/09/15 21:36:45 merdely Exp $

COMMENT=	barcode generator for reportlab

VERSION=	0.9.2
DISTNAME=	rlbarcode-${VERSION}
PKGNAME=	py-reportlab-barcode-${VERSION}p0

MASTER_SITES=	http://www.reportlab.org/ftp/extensions/

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/setup.py ${WRKDIST}

do-regress:
	cd ${WRKDIR}/reportlab/extensions/barcode && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
