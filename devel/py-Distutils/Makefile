# $OpenBSD: Makefile,v 1.1.1.1 2001/06/23 00:24:56 shell Exp $

COMMENT=	"collection of helpfull Python modules"

VERSION=	1.0.2
DISTNAME=	Distutils-${VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
NEED_VERSION=	1.417

HOMEPAGE=	http://www.python.org/sigs/distutils-sig/
MASTER_SITES=	${HOMEPAGE}/download/

MAINTAINER=	Maurice Nonnekes <maurice@amaze.nl>

PERMIT_PACKAGE_FTP=     Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_DISTFILES_CDROM= Yes

PYTHON_VER=	1.5

RUN_DEPENDS=	python${PYTHON_VER}::lang/python15
BUILD_DEPENDS=	${RUN_DEPENDS}

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
