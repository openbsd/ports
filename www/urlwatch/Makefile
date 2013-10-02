# $OpenBSD: Makefile,v 1.1.1.1 2013/10/02 07:55:55 sthen Exp $

COMMENT=	monitor webpages for updates

MODPY_EGG_VERSION= 1.15
DISTNAME=	urlwatch-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	http://thp.io/2008/urlwatch/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/py-html2text \
		devel/py-futures \
		www/py-requests

NO_TEST=	Yes

.include <bsd.port.mk>
