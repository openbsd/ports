# $OpenBSD: Makefile,v 1.3 2001/08/21 13:20:05 shell Exp $


COMMENT=		"python library for creating postscript or PDF charts"

VERSION=		1.10
DISTNAME=		PyChart-${VERSION}
PKGNAME=		py-Chart-${VERSION}
CATEGORIES=     	textproc devel
NEED_VERSION=		1.440

HOMEPAGE=		http://www.cs.washington.edu/homes/yasushi/pychart/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

PYTHON_VER=	2.1

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python${PYTHON_EXT}
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
