# $OpenBSD: Makefile,v 1.15 2005/12/03 22:03:44 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"libpcap bindings for Python"

DISTNAME=	pylibpcap-0.5.1
PKGNAME=	${DISTNAME:S/py/py-/}
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
	@perl -p -i -e "s,^(\#\S+ )python2\$$,#!${LOCALBASE}/bin/python${MODPY_VERSION}," \
		${WRKSRC}/examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
