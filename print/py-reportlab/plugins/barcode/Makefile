# $OpenBSD: Makefile,v 1.1.1.1 2004/07/27 08:55:23 xsa Exp $

COMMENT=	"barcode generator for reportlab"

VERSION=	0.9.2
DISTNAME=	rlbarcode-${VERSION}
PKGNAME=	py-reportlab-barcode-${VERSION}

MASTER_SITES=	http://eufemia.signoff.com.pl/~alek/ \
		http://metawers.nic.com.pl:81/openbsd-ports/

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/setup.py ${WRKDIST}

do-regress:
	cd ${WRKDIR}/reportlab/extensions/barcode && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
