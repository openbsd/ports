# $OpenBSD: Makefile,v 1.4 2002/09/16 07:36:32 shell Exp $

COMMENT=	"python Cryptographic Toolkit"

VERSION=	0.9
DISTNAME=	cryptkit-${VERSION}
PKGNAME=	py-cryptkit-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://eevolved.com/cryptkit/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cryptkit/}

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	py22
FLAVOR?=

.if ${FLAVOR:L:Mpy22}
PYTHON_VER=	2.2
.else
PYTHON_VER=	2.1
.endif

BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}
NO_REGRESS=	Yes

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py
SUBST_VARS=	PYTHON_VER

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
