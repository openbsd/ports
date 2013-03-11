# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:55 espie Exp $

COMMENT=	Zolera SOAP Infrastructure

MODPY_EGG_VERSION=2.0
DISTNAME=	ZSI-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
REVISION=	3
CATEGORIES=	net devel

HOMEPAGE=	http://pywebsvcs.sourceforge.net/

# Zope Public License (ZPL)
# Python 2.0 License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pywebsvcs/}

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/py-xml

# test needs network access
TEST_IS_INTERACTIVE=Yes
TEST_DEPENDS=${BUILD_PKGPATH}

do-test:
	find ${WRKSRC}/test -name \*.py -exec ${MODPY_BIN} {} \;

.include <bsd.port.mk>
