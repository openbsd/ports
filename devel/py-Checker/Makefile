# $OpenBSD: Makefile,v 1.14 2002/01/14 06:15:46 shell Exp $


COMMENT=	"python codes checker"

VERSION=	0.8.8
DISTNAME=	pychecker-${VERSION}
PKGNAME=	py-Checker-${VERSION}
CATEGORIES=    	devel
NEED_VERSION=	1.500

HOMEPAGE=	http://pychecker.sourceforge.net/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	pychecker

PYTHON_VER=	2.1

RUN_DEPENDS+=	::lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}

SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes

PY_CMD= @cd ${WRKSRC} && python${PYTHON_VER} ./setup.py
DOC_DIR=	${PREFIX}/share/doc/py-Checker/
DOC_FILE=	CHANGELOG KNOWN_BUGS TODO MAINTAINERS README

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${PY_CMD} install -O1 --prefix=${PREFIX}
.for i in ${DOC_FILE}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOC_DIR}
.endfor

.include <bsd.port.mk>
