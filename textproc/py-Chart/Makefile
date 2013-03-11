# $OpenBSD: Makefile,v 1.27 2013/03/11 11:42:46 espie Exp $

COMMENT=		Python library for creating postscript or PDF charts

MODPY_EGG_VERSION=	1.39
DISTNAME=		PyChart-${MODPY_EGG_VERSION}
PKGNAME=		py-Chart-${MODPY_EGG_VERSION}
REVISION=		2
CATEGORIES=		textproc devel

HOMEPAGE=		http://home.gna.org/pychart/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=		Yes

MASTER_SITES=	http://download.gna.org/pychart/

MODULES=	lang/python

RUN_DEPENDS+=	print/ghostscript/gnu

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-Chart

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/demos/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
