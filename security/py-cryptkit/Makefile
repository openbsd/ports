# $OpenBSD: Makefile,v 1.1.1.1 2002/01/03 23:34:39 shell Exp $

COMMENT=		"python Cryptographic Toolkit"

VERSION=		0.9
DISTNAME=		cryptkit-${VERSION}
PKGNAME=		py-cryptkit-${VERSION}
CATEGORIES=     	security devel
NEED_VERSION=		1.504

HOMEPAGE=		http://eevolved.com/cryptkit/

MAINTAINER=		Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	cryptkit

PYTHON_VER=	2.1

BUILD_DEPENDS+=	::lang/python
RUN_DEPENDS=	${BUILD_DEPENDS}
NO_REGRESS=	Yes

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

SUBST_VARS=	PYTHON_VER

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
