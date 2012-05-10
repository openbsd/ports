# $OpenBSD: Makefile,v 1.11 2012/05/10 15:11:59 giovanni Exp $

COMMENT=	Sender-Policy-Framework queries in Python

MODPY_EGG_VERSION=2.0.7
DISTNAME=	pyspf-${MODPY_EGG_VERSION}
PKGNAME=	py-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://bmsi.com/python/milter.html

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# Python
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES=        lang/python

BUILD_DEPENDS=	net/py-dns

RUN_DEPENDS=	mail/py-authres

REGRESS_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH} \
		textproc/py-yaml

do-regress:
	@cd ${WRKSRC}/test && ${MODPY_BIN} testspf.py

.include <bsd.port.mk>
