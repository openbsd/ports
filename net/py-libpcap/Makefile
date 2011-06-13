# $OpenBSD: Makefile,v 1.26 2011/06/13 08:47:52 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	libpcap bindings for Python

DISTNAME=	pylibpcap-0.6.2
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	3
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
MODPY_ADJ_FILES=examples/*.py

BUILD_DEPENDS=	devel/swig

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-libpcap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
