# $OpenBSD: Makefile,v 1.2 2006/09/28 17:19:13 xsa Exp $

COMMENT=	"ASN.1 library for Python"

DISTNAME=	pyasn1-0.0.5a
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel
PKG_ARCH=	*

HOMEPAGE=	http://pyasn1.sourceforge.net/

# BSD-style
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyasn1/}

MODULES=	lang/python

DOCSDIR=	${PREFIX}/share/doc/py-asn1
EXAMPLESDIR=	${PREFIX}/share/examples/py-asn1

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./suite.py

.include <bsd.port.mk>
