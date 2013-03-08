# $OpenBSD: Makefile,v 1.15 2013/03/08 09:13:36 jasper Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://labix.org/download/python-dateutil/
EXTRACT_SUFX=	.tar.bz2

post-install:
	${INSTALL_DATA} ${WRKSRC}/dateutil/zoneinfo/zoneinfo-${ZINFO}.tar.gz \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/dateutil/zoneinfo

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
