# $OpenBSD: Makefile,v 1.4 2002/01/02 02:53:25 shell Exp $

COMMENT=		"OpenSSL Wrappers for Python"

VERSION=		0.6.1
DISTNAME=		POW-${VERSION}
PKGNAME=		py-sslwrapper-${VERSION}
CATEGORIES=     	security devel
NEED_VERSION=		1.504

HOMEPAGE=		http://pow.sourceforge.net/

MAINTAINER=		Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pow

PYTHON_VER=	2.1

BUILD_DEPENDS+=	::lang/python
RUN_DEPENDS=	${BUILD_DEPENDS}
NO_REGRESS=	Yes

PY_CMD=		cd ${WRKSRC}; python${PYTHON_VER} ./setup.py.new

SUBST_VARS=	PYTHON_VER

post-patch:
	@sed -e 's|%%LOCALBASE%%|${LOCALBASE}|g'	\
		< ${WRKSRC}/setup.py > ${WRKSRC}/setup.py.new

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install --prefix=${PREFIX}

.include <bsd.port.mk>
