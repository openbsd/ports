# $OpenBSD: Makefile,v 1.6 2017/05/23 11:11:16 benoit Exp $

MODPY_EGG_VERSION =	0.5.3.1
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia

HOMEPAGE =	http://np1.github.io/pafy/

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes
MODPY_PI_DIR =	p/pafy

pre-configure:
	perl -pi -e "s,xprint\(xenc,print(xenc,g" ${WRKSRC}/scripts/ytdl

.include <bsd.port.mk>
