# $OpenBSD: Makefile,v 1.4 2002/02/15 19:53:43 matt Exp $


COMMENT=	"command line parsing library for Python"

VERSION=	1.2
DISTNAME=	Optik-${VERSION}
PKGNAME=	py-optik-${VERSION}
CATEGORIES=    	devel
NEED_VERSION=	1.500

HOMEPAGE=	http://optik.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	optik

PYTHON_VER=	2.1
BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes
PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
