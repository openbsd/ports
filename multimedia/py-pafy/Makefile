# $OpenBSD: Makefile,v 1.3 2015/06/28 22:52:21 bcallah Exp $

MODPY_EGG_VERSION =	0.3.74
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia

HOMEPAGE =	http://np1.github.io/pafy/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes
MODPY_PI_DIR =	p/pafy

pre-configure:
	perl -pi -e "s,xprint\(xenc,print(xenc,g" ${WRKSRC}/scripts/ytdl

.include <bsd.port.mk>
