# $OpenBSD: Makefile,v 1.2 2002/01/31 18:05:51 shell Exp $

COMMENT=	"python module to handle IPv4 and IPv6 address"

VERSION=	0.41
DISTNAME=	IPy-${VERSION}
PKGNAME=	py-IP-${VERSION}
CATEGORIES=    	net
NEED_VERSION=	1.504

HOMEPAGE=	http://c0re.jp:80/c0de/IPy/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

PYTHON_VER=	2.1
BUILD_DEPENDS=	::lang/python
RUN_DEPENDS=	${BUILD_DEPENDS}

SUBST_VARS=	PYTHON_VER
PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER} setup.py

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install -O2 --prefix=${PREFIX}

do-regress:
	@cd ${WRKSRC}/test; python${PYTHON_VER} test_IPy.py

.include <bsd.port.mk>
