# $OpenBSD: Makefile,v 1.5 2002/05/13 18:50:42 espie Exp $


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

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=optik/}

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
