# $OpenBSD: Makefile,v 1.5 2002/10/29 08:20:28 jakob Exp $

COMMENT=	checks HTML documents for broken links

DISTNAME=	linkchecker-1.6.4
CATEGORIES=    	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=linkchecker/}

HOMEPAGE=	http://linkchecker.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PYTHON_VER=	2.2
BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		:py-dns-*:net/py-dns
RUN_DEPENDS=	${BUILD_DEPENDS}

SUBST_VARS=	PYTHON_VER
NO_REGRESS=	Yes
PY_CMD=		@cd ${WRKSRC}; python${PYTHON_VER} ./setup.py

do-configure:
	cd ${WRKSRC}; python${PYTHON_VER} setup.py config

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} setup.py build

NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} setup.py install \
		--root=${WRKINST} --no-compile

.include <bsd.port.mk>
