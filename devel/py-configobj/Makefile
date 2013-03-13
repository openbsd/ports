# $OpenBSD: Makefile,v 1.12 2013/03/13 15:33:17 benoit Exp $

COMMENT=		config file reader and writer

MODPY_EGG_VERSION =	4.7.2
DISTNAME=		configobj-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		http://www.voidspace.org.uk/python/configobj.html

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=configobj/}
EXTRACT_SUFX=		.zip

MODULES=		lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-configobj
	cd ${WRKSRC}/docs && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-configobj/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-configobj/{} \;

do-test: fake
	cd ${WRKSRC}/tests && ${MAKE_ENV} \
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	${MODPY_BIN} ./test_configobj.py -v

.include <bsd.port.mk>
