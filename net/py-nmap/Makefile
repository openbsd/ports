COMMENT=	python interface to the nmap scan data

MODPY_DISTV=	0.6.1
DISTNAME=	python-nmap-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/python/py/}
CATEGORIES=	net
REVISION=	9

HOMEPAGE=	http://xael.org/norman/python/python-nmap/
SITES=		http://xael.org/pages/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	net/nmap

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nmap
	${INSTALL_SCRIPT} ${WRKSRC}/example.py \
		${PREFIX}/share/examples/py-nmap

.include <bsd.port.mk>
