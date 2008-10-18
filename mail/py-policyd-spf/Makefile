# $OpenBSD: Makefile,v 1.1.1.1 2008/10/18 11:17:59 ajacoutot Exp $

COMMENT=	external SPF policy checker for postfix

MODPY_EGG_VERSION=	0.7.1
DISTNAME=	pypolicyd-spf-${MODPY_EGG_VERSION}
PKGNAME=	py-policyd-spf-${MODPY_EGG_VERSION}
CATEGORIES=	mail

HOMEPAGE=	http://www.openspf.org

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/blobs/

MODULES=        lang/python

BUILD_DEPENDS=	::mail/py-spf

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/policyd-spf.1

.include <bsd.port.mk>
