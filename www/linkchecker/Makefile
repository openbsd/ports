# $OpenBSD: Makefile,v 1.3 2002/04/07 22:30:23 matt Exp $

COMMENT=	checks HTML documents for broken links

DISTNAME=	linkchecker-1.3.11
CATEGORIES=    	www
NEED_VERSION=	1.500

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://linkchecker.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PYTHON_VER=	2.1
BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	${BUILD_DEPENDS}

do-configure:
	cd ${WRKSRC}; python${PYTHON_VER} setup.py config

do-build:
	cd ${WRKSRC}; python${PYTHON_VER} setup.py build

do-install:
	cd ${WRKSRC}; python${PYTHON_VER} setup.py install \
		--root=${WRKINST} --no-compile

.include <bsd.port.mk>
