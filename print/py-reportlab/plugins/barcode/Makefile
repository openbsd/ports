# $OpenBSD: Makefile,v 1.2 2004/11/02 21:10:04 alek Exp $

COMMENT=	"barcode generator for reportlab"

VERSION=	0.9.2
DISTNAME=	rlbarcode-${VERSION}
PKGNAME=	py-reportlab-barcode-${VERSION}

MASTER_SITES=	http://www.reportlab.org/ftp/extensions/

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/setup.py ${WRKDIST}

do-regress:
	cd ${WRKDIR}/reportlab/extensions/barcode && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
