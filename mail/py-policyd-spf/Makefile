# $OpenBSD: Makefile,v 1.17 2015/12/29 10:47:13 giovanni Exp $

COMMENT=	external SPF policy checker for postfix

VER=		1.3
P=		2
MODPY_EGG_VERSION=${VER}.${P}
DISTNAME=	pypolicyd-spf-${MODPY_EGG_VERSION}
PKGNAME=	py-policyd-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://www.openspf.org

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

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
