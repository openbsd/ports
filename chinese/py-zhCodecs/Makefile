# $OpenBSD: Makefile,v 1.4 2002/12/29 19:32:37 fgsch Exp $

COMMENT=	"Python Unicode codecs for Chinese charsets"

VERSION=	1.2.0
DISTNAME=	ChineseCodecs${VERSION}
PKGNAME=	py-zhCodecs-${VERSION}
CATEGORIES=    	chinese devel

HOMEPAGE=	http://www.sf.net/projects/python-codecs/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/ \
		ftp://ftp2.python.or.kr/pub/FreeBSD/ports/distfiles/

PYTHON_VER=	2.1

BUILD_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}
NO_REGRESS=	Yes

PY_CMD=		cd ${WRKSRC}/Python; python${PYTHON_VER} ./setup.py

SUBST_VARS=	PYTHON_VER

post-extract:
	@${CHMOD} 711 ${WRKSRC}/Python/chinesetw

do-build:
	${PY_CMD} build --build-base=${WRKSRC}

do-install:
	${PY_CMD} install -O1 --prefix=${PREFIX}

.include <bsd.port.mk>
