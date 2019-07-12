# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:36 sthen Exp $

COMMENT=	external SPF policy checker for postfix

VER=		1.3
P=		2
REVISION=	1
MODPY_EGG_VERSION=${VER}.${P}
DISTNAME=	pypolicyd-spf-${MODPY_EGG_VERSION}
PKGNAME=	py-policyd-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://www.openspf.org

# Apache 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://launchpad.net/pypolicyd-spf/${VER}/${MODPY_EGG_VERSION}/+download/

MODULES=        lang/python

BUILD_DEPENDS=	mail/py-spf
RUN_DEPENDS=	mail/py-spf \
		net/py-dns \
		net/py-ipaddr

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/policyd-spf.1

.include <bsd.port.mk>
