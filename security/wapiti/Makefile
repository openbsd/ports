# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:53 sthen Exp $

COMMENT =	web-application vulnerability scanner

MODPY_EGG_VERSION =	3.0.1
DISTNAME =	wapiti3-${MODPY_EGG_VERSION}
PKGNAME =	wapiti-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	security www

HOMEPAGE =	http://wapiti.sourceforge.net/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=wapiti/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			net/py-tld${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			security/py-yaswfp

TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
