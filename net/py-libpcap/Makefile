# $OpenBSD: Makefile,v 1.20 2009/03/23 19:40:13 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	libpcap bindings for Python

DISTNAME=	pylibpcap-0.6.2
PKGNAME=	${DISTNAME:S/py/py-/}p0
CATEGORIES=	net

HOMEPAGE=	http://pylibpcap.sourceforge.net/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		pcap

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pylibpcap/}

MODULES=	lang/python

BUILD_DEPENDS=	:swig-*:devel/swig

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-libpcap

pre-build:
	@perl -p -i -e "s,^\#\! /usr/bin/env python,#!${MODPY_BIN}," \
		${WRKSRC}/examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
