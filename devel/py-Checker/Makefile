# $OpenBSD: Makefile,v 1.7 2001/09/25 06:47:31 shell Exp $


COMMENT=		"python codes checker"

VERSION=		0.8.4
DISTNAME=		pychecker-${VERSION}
PKGNAME=		py-Checker-${VERSION}
CATEGORIES=     	devel
NEED_VERSION=		1.460

HOMEPAGE=		http://pychecker.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pychecker

PYTHON_VER=	2.1

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER

PY_CMD=	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
