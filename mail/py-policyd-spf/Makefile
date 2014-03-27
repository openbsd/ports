# $OpenBSD: Makefile,v 1.15 2014/03/27 10:39:13 giovanni Exp $

COMMENT=	external SPF policy checker for postfix

MODPY_EGG_VERSION=1.2
DISTNAME=	pypolicyd-spf-${MODPY_EGG_VERSION}
PKGNAME=	py-policyd-spf-${MODPY_EGG_VERSION}
REVISION=	0
CATEGORIES=	mail

HOMEPAGE=	http://www.openspf.org

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://launchpad.net/pypolicyd-spf/${MODPY_EGG_VERSION}/${MODPY_EGG_VERSION}/+download/

MODULES=        lang/python
USE_GROFF =	Yes

BUILD_DEPENDS=	mail/py-spf
RUN_DEPENDS=	mail/py-spf \
		net/py-dns \
		net/py-ipaddr

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/policyd-spf.1

.include <bsd.port.mk>
