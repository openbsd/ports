# $OpenBSD: Makefile,v 1.7 2002/09/13 22:28:49 naddy Exp $

COMMENT=	"python interface to cURL library"

VERSION=	7.9.7
DISTNAME=	pycurl-${VERSION}
PKGNAME=	py-curl-${VERSION}
CATEGORIES=    	net

HOMEPAGE=	http://pycurl.sourceforge.net/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

PYTHON_VER=	2.2
LIB_DEPENDS=	curl.2::net/curl
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
