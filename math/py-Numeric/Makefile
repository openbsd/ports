# $OpenBSD: Makefile,v 1.8 2002/09/15 11:08:42 shell Exp $

COMMENT=	"fast array facility to the Python language"

VERSION=	22.0
DISTNAME=	Numeric-${VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	math

MAINTAINER=	Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=numpy/}
HOMEPAGE=	http://www.pfdubois.com/numpy/

FLAVORS=	python2.1
FLAVOR?=

.if ${FLAVOR:L} == "python2.1"
PYTHON_VER=	2.1
.else
PYTHON_VER=	2.2
.endif

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
