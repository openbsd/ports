# $OpenBSD: Makefile,v 1.17 2015/09/16 17:36:16 giovanni Exp $

COMMENT=	Sender-Policy-Framework queries in Python

MODPY_EGG_VERSION=2.0.12
DISTNAME=	pyspf-${MODPY_EGG_VERSION}
PKGNAME=	py-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://bmsi.com/python/milter.html

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# Python
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES=        lang/python

BUILD_DEPENDS=	net/py-dns

RUN_DEPENDS=	mail/py-authres

TEST_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH} \
		textproc/py-yaml \
		net/py-ipaddr

do-test:
	@cd ${WRKSRC}/test && ${MODPY_BIN} testspf.py

.include <bsd.port.mk>
