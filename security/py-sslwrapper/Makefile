# $OpenBSD: Makefile,v 1.1.1.1 2001/09/10 06:08:03 shell Exp $

COMMENT=		"OpenSSL Wrappers for Python"

VERSION=		0.5
DISTNAME=		POW-${VERSION}
PKGNAME=		py-sslwrapper-${VERSION}
CATEGORIES=     	security devel
NEED_VERSION=		1.454

HOMEPAGE=		http://pow.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pow

PYTHON_VER=	2.1

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

SUBST_VARS=	PYTHON_VER

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
