# $OpenBSD: Makefile,v 1.7 2002/09/13 09:00:00 shell Exp $

COMMENT=	"OpenSSL Wrappers for Python"

VERSION=	0.6.1
DISTNAME=	POW-${VERSION}
PKGNAME=	py-sslwrapper-${VERSION}
CATEGORIES=    	security devel

HOMEPAGE=	http://www.sf.net/projects/pow/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pow/}

PYTHON_VER=	2.2

BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
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
