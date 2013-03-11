# $OpenBSD: Makefile,v 1.14 2013/03/11 11:23:56 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	probability and statistics utilities for Python

DISTNAME=	probstat_0.912
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION =	7
CATEGORIES=	math

HOMEPAGE=	http://probstat.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=probstat/}
EXTRACT_SUFX=	.tgz

WANTLIB=	${MODPY_WANTLIB}

MODULES=	lang/python

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-probstat

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
