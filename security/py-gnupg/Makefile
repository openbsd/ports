# $OpenBSD: Makefile,v 1.6 2001/11/10 15:00:49 espie Exp $


COMMENT=		"python module for GnuPG interface"

VERSION=		0.3.1
DISTNAME=		GnuPGInterface-${VERSION}
PKGNAME=		py-gnupg-${VERSION}
CATEGORIES=     	security devel
NEED_VERSION=		1.489

HOMEPAGE=		http://py-gnupg.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	py-gnupg

PYTHON_VER=	2.1

BUILD_DEPENDS+=	::lang/python \
		::security/gnupg
RUN_DEPENDS=	${BUILD_DEPENDS}

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
