# $OpenBSD: Makefile,v 1.11 2011/09/16 10:31:22 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	probability and statistics utilities for Python

DISTNAME=	probstat_0.912
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION =	5
CATEGORIES=	math

HOMEPAGE=	http://probstat.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=probstat/}
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-probstat

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
