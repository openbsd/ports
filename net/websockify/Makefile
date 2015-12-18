# $OpenBSD: Makefile,v 1.1.1.1 2015/12/18 13:18:39 sthen Exp $

COMMENT=	WebSocket to TCP proxy

MODPY_EGG_VERSION= 0.7.0
DISTNAME=	websockify-${MODPY_EGG_VERSION}

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=	kanaka
GH_PROJECT=	websockify
GH_TAGNAME=	v${MODPY_EGG_VERSION}

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
TEST_DEPENDS=	devel/py-nose \
		devel/py-mox \
		${BUILD_PKGPATH}

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/websockify.1 ${PREFIX}/man/man1/

do-test:
	cd ${WRKSRC}/tests; nosetests

.include <bsd.port.mk>
