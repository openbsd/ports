# $OpenBSD: Makefile,v 1.6 2013/10/04 09:28:31 giovanni Exp $

COMMENT =	module for RFC 5451 Authentication-Results Headers

MODPY_EGG_VERSION = 0.602
DISTNAME =	authres-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	mail

HOMEPAGE =	https://launchpad.net/authentication-results-python

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=a/authres/}

MODULES	=	lang/python

NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/authres/tests \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/authres/tests

.include <bsd.port.mk>
