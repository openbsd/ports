# $OpenBSD: Makefile,v 1.23 2018/06/02 12:01:58 jasper Exp $

COMMENT=	SNMP framework for Python

MODPY_EGG_VERSION = 4.3.2
DISTNAME=	pysnmp-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://pysnmp.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysnmp/}

MODULES=	lang/python

MODPY_SETUPTOOLS = Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =   security/py-cryptodome \
		devel/py-asn1

DOCSDIR=	${PREFIX}/share/doc/py-snmp
EXAMPLESDIR=	${PREFIX}/share/examples/py-snmp

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/docs; tar cf - . | tar xf - -C ${DOCSDIR} 
	cd ${WRKSRC}/examples; tar cf - . | tar xf - -C ${EXAMPLESDIR}

NO_TEST =	Yes

.include <bsd.port.mk>
