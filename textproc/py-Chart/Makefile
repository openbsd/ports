# $OpenBSD: Makefile,v 1.8 2002/02/15 19:53:43 matt Exp $


COMMENT=		"python library for creating postscript or PDF charts"

VERSION=		1.11
DISTNAME=		PyChart-${VERSION}
PKGNAME=		py-Chart-${VERSION}
CATEGORIES=     	textproc devel
NEED_VERSION=		1.487

HOMEPAGE=		http://www.hpl.hp.com/personal/Yasushi_Saito/pychart/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

PYTHON_VER=	2.1

BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}
SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
