# $OpenBSD: Makefile,v 1.5 2002/05/13 23:31:26 espie Exp $

COMMENT=	"fast array facility to the Python language"
COMMENT-module=	"extra modules for py-Numeric"

VERSION=	20.3
DISTNAME=	Numeric-${VERSION}
PKGNAME=	py-${DISTNAME}
PKGNAME-module=	py-Numeric-module-${VERSION}
CATEGORIES=    	devel
NEED_VERSION=	1.502

MAINTAINER=	Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}
HOMEPAGE=	http://www.pfdubois.com/numpy/

PYTHON_VER=	2.1
SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

MULTI_PACKAGES=	-module
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-module"
RUN_DEPENDS=    ::math/py-Numeric
.endif

PY_SETUP=	setup_all.py
PY_CMD=		@cd ${WRKSRC} && python${PYTHON_VER} ${PY_SETUP}

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
