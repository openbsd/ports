# $OpenBSD: Makefile,v 1.6 2016/01/04 12:18:06 shadchin Exp $

COMMENT=	character encoding auto-detection in Python

MODPY_EGG_VERSION= 2.3.0
DISTNAME=	chardet-${MODPY_EGG_VERSION}
PKGNAME=	py-chardet-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/chardet/chardet

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST=	Yes

FLAVORS =	python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/chardetect ${PREFIX}/bin/chardetect${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
