# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:25 espie Exp $

COMMENT=		config file reader and writer

MODPY_EGG_VERSION=	4.5.3
DISTNAME=		configobj-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION =		3

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

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} configobj_test.py -v

.include <bsd.port.mk>
