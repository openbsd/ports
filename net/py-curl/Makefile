# $OpenBSD: Makefile,v 1.1.1.1 2001/12/31 19:21:39 shell Exp $


COMMENT=	"python interface to cURL library"

VERSION=	0.4.4
DISTNAME=	pycurl-${VERSION}
PKGNAME=	py-curl-${VERSION}
CATEGORIES=    	net
NEED_VERSION=	1.504

HOMEPAGE=	http://curl.sf.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pycurl.sourceforge.net/

PYTHON_VER=	2.1
LIB_DEPENDS=	curl.2::net/curl
BUILD_DEPENDS=	::lang/python
RUN_DEPENDS=	${BUILD_DEPENDS}

SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes
PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
