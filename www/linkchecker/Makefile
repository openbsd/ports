# $OpenBSD: Makefile,v 1.1.1.1 2001/12/05 21:53:31 jakob Exp $

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

BUILD_DEPENDS=	python21::lang/python
RUN_DEPENDS=	python21::lang/python

do-configure:
	cd ${WRKSRC}; python setup.py config

do-build:
	cd ${WRKSRC}; python setup.py build

do-install:
	cd ${WRKSRC}; python setup.py install --root=${WRKINST} --no-compile

.include <bsd.port.mk>
