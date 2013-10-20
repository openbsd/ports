# $OpenBSD: Makefile,v 1.18 2013/10/20 13:14:21 benoit Exp $

COMMENT=	SNMP framework for Python

MODPY_EGG_VERSION = 4.2.5
DISTNAME=	pysnmp-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	net

HOMEPAGE=	http://pysnmp.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysnmp/}

MODULES=	lang/python

MODPY_SETUPTOOLS = Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =   security/py-crypto \
		devel/py-asn1

DOCSDIR=	${PREFIX}/share/doc/py-snmp
EXAMPLESDIR=	${PREFIX}/share/examples/py-snmp

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/docs; tar cf - . | tar xf - -C ${DOCSDIR} 
	cd ${WRKSRC}/examples; tar cf - . | tar xf - -C ${EXAMPLESDIR}

NO_TEST =	Yes

.include <bsd.port.mk>
