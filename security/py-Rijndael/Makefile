# $OpenBSD: Makefile,v 1.5 2003/06/14 09:44:20 shell Exp $

COMMENT=	"python implementation of the Rijndael encryption algorithm"

VERSION=	1.1
DISTNAME=	pyrijndael-snapshot
PKGNAME=	py-Rijndael-${VERSION}
CATEGORIES=     security devel

MAINTAINER=	Shell Hung <shell@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://jclement.ca/Projects/pyrijndael.xml
MASTER_SITES=	http://mecca.bluesine.com/dl/pyrijndael/ \
		http://ftp.bluesine.com/pyrijndael/

BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

WRKDIST=	${WRKDIR}/pyrijndael

PYTHON_VER=	2.2
PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER}
PY_SITEPKG=	${PREFIX}/lib/python${PYTHON_VER}/site-packages/
PY_MODNAME=	pyRijndael.py

SUBST_VARS=	PYTHON_VER

do-build:
	${PY_CMD} -c 'import pyRijndael'
	${PY_CMD} -O -c 'import pyRijndael'

do-install:
	${INSTALL_DATA_DIR} ${PY_SITEPKG}
	${INSTALL_DATA} ${WRKSRC}/pyRijndael.* ${PY_SITEPKG}

do-regress:
	@${PY_CMD} ${PY_MODNAME}

.include <bsd.port.mk>
