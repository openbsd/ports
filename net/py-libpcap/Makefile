# $OpenBSD: Makefile,v 1.32 2019/07/12 20:48:45 sthen Exp $

COMMENT=		libpcap bindings for Python

MODPY_EGG_VERSION=	0.6.4
DISTNAME=		pylibpcap-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
CATEGORIES=		net

HOMEPAGE=		http://pylibpcap.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pcap pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pylibpcap/}

MODULES=		lang/python
MODPY_ADJ_FILES=	examples/*.py

BUILD_DEPENDS=		devel/swig

NO_TEST=		Yes

EXAMPLESDIR=		${PREFIX}/share/examples/py-libpcap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
