# $OpenBSD: Makefile,v 1.8 2010/07/12 22:07:41 sthen Exp $

COMMENT=	SNMP framework for Python

DISTNAME=	pysnmp-3.4.4
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	http://pysnmp.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysnmp/}

MODULES=	lang/python

DOCSDIR=	${PREFIX}/share/doc/py-snmp
EXAMPLESDIR=	${PREFIX}/share/examples/py-snmp

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}/docs; tar cf - . | tar xf - -C ${DOCSDIR} 
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples; tar cf - . | tar xf - -C ${EXAMPLESDIR}

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'from pysnmp.test import suite; suite.run()'

.include <bsd.port.mk>
