# $OpenBSD: Makefile,v 1.2 2014/07/18 14:11:42 sthen Exp $

COMMENT=	monitor webpages for updates

MODPY_EGG_VERSION= 1.16
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

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	mv ${PREFIX}/share/urlwatch/examples ${PREFIX}/share/examples/urlwatch
	rmdir ${PREFIX}/share/{man,urlwatch}

.include <bsd.port.mk>
