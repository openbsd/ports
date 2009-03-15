# $OpenBSD: Makefile,v 1.10 2009/03/15 12:49:35 espie Exp $

COMMENT=	Python API for advanced date calculations

VERSION=	1.1
ZINFO=		2005q
DISTNAME=	python-dateutil-${VERSION}
PKGNAME=	${DISTNAME:S/^python-/py-/}p1
CATEGORIES=    	devel

HOMEPAGE=	http://labix.org/python-dateutil

MAINTAINER=	Damien Miller <djm@openbsd.org>

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
