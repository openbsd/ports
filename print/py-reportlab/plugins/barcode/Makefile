# $OpenBSD: Makefile,v 1.5 2007/10/08 08:22:42 steven Exp $

COMMENT=	barcode generator for reportlab

VERSION=	0.9.2
DISTNAME=	rlbarcode-${VERSION}
PKGNAME=	py-reportlab-barcode-${VERSION}p1

MASTER_SITES=	http://www.reportlab.org/ftp/extensions/

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/setup.py ${WRKDIST}

do-regress:
	cd ${WRKDIR}/reportlab/extensions/barcode && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
