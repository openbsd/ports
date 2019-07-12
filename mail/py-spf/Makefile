# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:37 sthen Exp $

COMMENT=	Sender-Policy-Framework queries in Python

MODPY_EGG_VERSION=2.0.12
DISTNAME=	pyspf-${MODPY_EGG_VERSION}
REVISION=	1
PKGNAME=	py-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://bmsi.com/python/milter.html

# Python
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES=        lang/python

BUILD_DEPENDS=	net/py-dns

RUN_DEPENDS=	mail/py-authres \
		net/py-dns

TEST_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH} \
		textproc/py-yaml \
		net/py-ipaddr

do-test:
	@cd ${WRKSRC}/test && ${MODPY_BIN} testspf.py

.include <bsd.port.mk>
