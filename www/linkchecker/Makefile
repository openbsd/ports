# $OpenBSD: Makefile,v 1.2 2002/02/15 19:53:43 matt Exp $

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

BUILD_DEPENDS=	:python-2.1*:lang/python/2.1
RUN_DEPENDS=	${BUILD_DEPENDS}

do-configure:
	cd ${WRKSRC}; python setup.py config

do-build:
	cd ${WRKSRC}; python setup.py build

do-install:
	cd ${WRKSRC}; python setup.py install --root=${WRKINST} --no-compile

.include <bsd.port.mk>
