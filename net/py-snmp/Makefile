# $OpenBSD: Makefile,v 1.22 2018/05/12 19:45:22 jasper Exp $

COMMENT=	SNMP framework for Python

MODPY_EGG_VERSION = 4.3.2
DISTNAME=	pysnmp-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0
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

# py-crypto -> py-cryptodome
_CRYPTO =	pysnmp/proto/secmod/eso/priv/des3.py \
		pysnmp/proto/secmod/rfc3826/priv/aes.py \
		pysnmp/proto/secmod/rfc3414/priv/des.py
		
pre-patch:
.for p in ${_CRYPTO}
	sed -i 's,Crypto,Cryptodome,g' ${WRKSRC}/$p
.endfor
###

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/docs; tar cf - . | tar xf - -C ${DOCSDIR} 
	cd ${WRKSRC}/examples; tar cf - . | tar xf - -C ${EXAMPLESDIR}

NO_TEST =	Yes

.include <bsd.port.mk>
