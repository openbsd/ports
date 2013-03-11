# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:25 espie Exp $

COMMENT=	Python API for advanced date calculations

VERSION=	1.1
ZINFO=		2005q
DISTNAME=	python-dateutil-${VERSION}
PKGNAME=	${DISTNAME:S/^python-/py-/}
REVISION =	6
CATEGORIES=    	devel

HOMEPAGE=	http://labix.org/python-dateutil

MAINTAINER =	frantisek holop <minusf@obiit.org>

MODULES=	lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://labix.org/download/python-dateutil/
EXTRACT_SUFX=	.tar.bz2

post-install:
	${INSTALL_DATA} ${WRKSRC}/dateutil/zoneinfo/zoneinfo-${ZINFO}.tar.gz \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/dateutil/zoneinfo

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
