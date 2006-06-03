# $OpenBSD: Makefile,v 1.3 2006/06/03 09:41:19 alek Exp $

COMMENT=	"barcode generator for reportlab"

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
