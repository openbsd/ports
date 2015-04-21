# $OpenBSD: Makefile,v 1.15 2015/04/21 18:24:22 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	probability and statistics utilities for Python

DISTNAME=	probstat_0.912
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION =	8
CATEGORIES=	math

HOMEPAGE=	http://probstat.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=probstat/}
EXTRACT_SUFX=	.tgz


MODULES=	lang/python

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-probstat

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
