# $OpenBSD: Makefile,v 1.3 2002/05/14 12:07:10 naddy Exp $

COMMENT=	"python tool for generate Python API documents"

DISTNAME=	HappyDoc_r2_0
PKGNAME=	py-HappyDoc-2.0
CATEGORIES=    	textproc
NEED_VERSION=	1.504

HOMEPAGE=	http://happydoc.sf.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=happydoc/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

PYTHON_VER=	2.1
BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes
PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

WRKSRC=		${WRKDIR}/HappyDoc-r2_0

do-build:
	@echo ${WRKSRC}
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
