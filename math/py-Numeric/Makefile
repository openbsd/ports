# $OpenBSD: Makefile,v 1.6 2002/06/06 02:40:14 shell Exp $

COMMENT=	"fast array facility to the Python language"

VERSION=	21.0
DISTNAME=	Numeric-${VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=    	devel
NEED_VERSION=	1.531

MAINTAINER=	Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}
HOMEPAGE=	http://www.pfdubois.com/numpy/

PYTHON_VER=	2.2
SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

PY_SETUP=	setup.py
PY_CMD=		@cd ${WRKSRC} && python${PYTHON_VER} ${PY_SETUP}

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
