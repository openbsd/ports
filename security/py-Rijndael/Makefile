# $OpenBSD: Makefile,v 1.4 2002/12/29 20:31:40 fgsch Exp $

COMMENT=	"python implementation of the Rijndael encryption algorithm"

VERSION=	1.1
DISTNAME=	pyRijndael-${VERSION}.py
PKGNAME=	py-Rijndael-${VERSION}
CATEGORIES=     security devel
EXTRACT_SUFX=	.gz
EXTRACT_ONLY=

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

HOMEPAGE=	http://www.bluesine.com/Projects/mods-python/pyrijndael
MASTER_SITES=	http://ftp.bluesine.com/pub/bluesine.com/python-mods/rijndael/

BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

PYTHON_VER=	2.1
PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER}
PY_SITEPKG=	${PREFIX}/lib/python${PYTHON_VER}/site-packages/
PY_MODNAME=	pyRijndael.py

SUBST_VARS=	PYTHON_VER

post-extract:
	@mkdir ${WRKDIST}
	@${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} >	\
		${WRKSRC}/${PY_MODNAME}

do-build:
	${PY_CMD} -c 'import pyRijndael'
	${PY_CMD} -O -c 'import pyRijndael'

do-install:
	${INSTALL_DATA_DIR} ${PY_SITEPKG}
	${INSTALL_DATA} ${WRKSRC}/pyRijndael.* ${PY_SITEPKG}

do-regress:
	@${PY_CMD} ${PY_MODNAME}

.include <bsd.port.mk>
