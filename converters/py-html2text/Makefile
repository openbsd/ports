# $OpenBSD: Makefile,v 1.1.1.1 2013/06/26 16:16:45 sthen Exp $

COMMENT=	convert HTML into clean plain ASCII text

MODPY_EGG_VERSION= 3.200.3
DISTNAME=	html2text-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	converters www

HOMEPAGE=	http://www.aaronsw.com/2002/html2text/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=h/html2text/}

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

.include <bsd.port.mk>
