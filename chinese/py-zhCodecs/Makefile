# $OpenBSD: Makefile,v 1.2 2002/01/31 17:40:44 shell Exp $

COMMENT=	"Python Unicode codecs for Chinese charsets"

VERSION=	1.2.0
DISTNAME=	ChineseCodecs${VERSION}
PKGNAME=	py-zhCodecs-${VERSION}
CATEGORIES=    	chinese devel
NEED_VERSION=	1.504

HOMEPAGE=	http://www.sf.net/projects/python-codecs/

MAINTAINER=	Shell Hung <shell@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/ \
		ftp://ftp2.python.or.kr/pub/FreeBSD/ports/distfiles/

PYTHON_VER=	2.1

BUILD_DEPENDS+=	::lang/python
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
