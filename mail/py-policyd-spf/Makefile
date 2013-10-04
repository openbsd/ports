# $OpenBSD: Makefile,v 1.14 2013/10/04 09:37:43 giovanni Exp $

COMMENT=	external SPF policy checker for postfix

MODPY_EGG_VERSION=1.2
DISTNAME=	pypolicyd-spf-${MODPY_EGG_VERSION}
PKGNAME=	py-policyd-spf-${MODPY_EGG_VERSION}
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
		net/py-dns

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/policyd-spf.1

.include <bsd.port.mk>
