# $OpenBSD: Makefile,v 1.14 2005/05/17 07:39:20 xsa Exp $

SHARED_ONLY=	Yes

COMMENT=	"libpcap bindings for Python"

DISTNAME=	pylibpcap-0.3.1
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

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/sniff.py ${EXAMPLESDIR}

.include <bsd.port.mk>
