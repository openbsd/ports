# $OpenBSD: Makefile,v 1.1.1.1 2008/10/18 11:15:36 ajacoutot Exp $

COMMENT=	Sender-Policy-Framework queries in Python

MODPY_EGG_VERSION=2.0.5
DISTNAME=	pyspf-${MODPY_EGG_VERSION}
PKGNAME=	py-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://bmsi.com/python/milter.html

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# Python
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES=        lang/python

BUILD_DEPENDS=	py-dns-*:net/py-dns

REGRESS_DEPENDS=${PKGNAME}:${BUILD_PKGPATH} \
		::textproc/py-yaml

BINFILES=	spfquery.py type99.py

do-regress:
	@cd ${WRKSRC}/test && ${MODPY_BIN} testspf.py

post-install:
.for i in ${BINFILES}
	@cd ${PREFIX}/bin && mv ${i} `basename ${i} .py`
.endfor

.include <bsd.port.mk>
