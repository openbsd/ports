# $OpenBSD: Makefile,v 1.1.1.1 2001/08/15 19:48:27 shell Exp $


COMMENT=		"testing framework for python"

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}
CATEGORIES=     	devel
NEED_VERSION=		1.435

HOMEPAGE=		http://pyunit.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pyunit

PYTHON_VER=	2.1

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python${PYTHON_EXT}
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py build \
		--build-base=${WRKSRC}

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} ./setup.py install \
		--prefix=${PREFIX}

.include <bsd.port.mk>
