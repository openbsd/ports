# $OpenBSD: Makefile,v 1.4 2013/03/13 14:12:58 benoit Exp $

COMMENT =	module for RFC 5451 Authentication-Results Headers

MODPY_EGG_VERSION = 0.501
DISTNAME =	authres-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	mail

HOMEPAGE =	https://launchpad.net/authentication-results-python

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/0.5/${MODPY_EGG_VERSION}/+download/

MODULES	=	lang/python

NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/authres/tests \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/authres/tests

.include <bsd.port.mk>
