# $OpenBSD: Makefile,v 1.29 2015/04/17 16:15:59 bluhm Exp $

SHARED_ONLY=	Yes

COMMENT=	libpcap bindings for Python

DISTNAME=	pylibpcap-0.6.2
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	5
CATEGORIES=	net

HOMEPAGE=	http://pylibpcap.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		${MODPY_WANTLIB} m pcap pthread util

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pylibpcap/}

MODULES=	lang/python
MODPY_ADJ_FILES=examples/*.py

BUILD_DEPENDS=	devel/swig

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-libpcap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
