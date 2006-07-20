# $OpenBSD: Makefile,v 1.18 2006/07/20 04:43:28 steven Exp $


COMMENT=	"Python library for creating postscript or PDF charts"

VERSION=	1.35
DISTNAME=	PyChart-${VERSION}
PKGNAME=	py-Chart-${VERSION}p1
CATEGORIES=	textproc devel

HOMEPAGE=	http://home.gna.org/pychart/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.gna.org/pychart/

MODULES=	lang/python

RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-Chart
EXAMPLESDIR=	${PREFIX}/share/examples/py-Chart

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/pychart/* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/demos/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
