# $OpenBSD: Makefile,v 1.4 2001/11/04 05:45:14 shell Exp $


COMMENT=		"python module for GnuPG interface"

VERSION=		0.3.1
DISTNAME=		GnuPGInterface-${VERSION}
PKGNAME=		py-gnupg-${VERSION}
CATEGORIES=     	security devel
NEED_VERSION=		1.448

HOMEPAGE=		http://py-gnupg.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	py-gnupg

PYTHON_VER=	2.1

RUN_DEPENDS+=	python${PYTHON_VER}::lang/python \
		gpg::security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

SUBST_VARS=	PYTHON_VER

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
